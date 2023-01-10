import Speech
import Foundation
import Dispatch




func getTextFromAudioFile(_ audioFile: URL) async throws -> String {

    let recognizer = SFSpeechRecognizer()
    let request = SFSpeechURLRecognitionRequest(url: audioFile)
    request.shouldReportPartialResults = false

    var transcription = ""
    let semaphore = DispatchSemaphore(value: 0)
    recognizer?.recognitionTask(with: request) { (result, error) in
        if let result = result {
            transcription = result.bestTranscription.formattedString
            semaphore.signal()
        }
    }

    semaphore.wait()


    return transcription
}

func main() async {
    if CommandLine.arguments.count != 2 || CommandLine.arguments[1].contains("-h") {
        print("Usage: \(CommandLine.arguments[0]) <audio file>")
        exit(1)
    }

    let audioFile = URL(fileURLWithPath: CommandLine.arguments[1])

    do {
        let transcription = try await getTextFromAudioFile(audioFile)
        print(transcription)
        exit(0)
    } catch {
        print("There was an error: \(error)")
        exit(1)
    }
}


await main()


