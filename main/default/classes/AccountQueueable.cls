public class AccountQueueable implements Queueable {
    public void execute(QueueableContext context) {
        System.debug('Async processing after Account insert');
    }
}