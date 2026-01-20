public class SimpleUnitOfWork {

    private List<SObject> newRecords = new List<SObject>();
    private List<SObject> dirtyRecords = new List<SObject>();

    public void registerNew(SObject record) {
        newRecords.add(record);
    }

    public void registerDirty(SObject record) {
        dirtyRecords.add(record);
    }

    public void commitWork() {
        if(!newRecords.isEmpty()) insert newRecords;
        if(!dirtyRecords.isEmpty()) update dirtyRecords;
    }
}