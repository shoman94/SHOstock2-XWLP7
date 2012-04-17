.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"


# instance fields
.field private volatile connectionListeners:Ljava/util/ArrayList;

.field private volatile folderListeners:Ljava/util/ArrayList;

.field private volatile messageChangedListeners:Ljava/util/ArrayList;

.field private volatile messageCountListeners:Ljava/util/ArrayList;

.field protected mode:I

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/Folder;->mode:I

    .line 96
    iput-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/ArrayList;

    .line 98
    iput-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    .line 99
    iput-object v1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    .line 108
    return-void
.end method


# virtual methods
.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 576
    return-void
.end method

.method fireClosed(Ljavax/mail/event/ConnectionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 851
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 854
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 856
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/ConnectionListener;

    .line 857
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 858
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 861
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/ConnectionListener;->closed(Ljavax/mail/event/ConnectionEvent;)V

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 864
    :cond_0
    return-void
.end method

.method fireDisconnected(Ljavax/mail/event/ConnectionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 834
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/ConnectionListener;

    .line 837
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 838
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 841
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/ConnectionListener;->disconnected(Ljavax/mail/event/ConnectionEvent;)V

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 844
    :cond_0
    return-void
.end method

.method fireMessagesAdded(Ljavax/mail/event/MessageCountEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1046
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1051
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/MessageCountListener;

    .line 1052
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1053
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 1056
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/MessageCountListener;->messagesAdded(Ljavax/mail/event/MessageCountEvent;)V

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1059
    :cond_0
    return-void
.end method

.method fireMessagesRemoved(Ljavax/mail/event/MessageCountEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 1066
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1071
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/MessageCountListener;

    .line 1072
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1073
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 1076
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/MessageCountListener;->messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1079
    :cond_0
    return-void
.end method

.method fireOpened(Ljavax/mail/event/ConnectionEvent;)V
    .locals 3
    .parameter

    .prologue
    .line 811
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 814
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 816
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Ljavax/mail/event/ConnectionListener;

    .line 817
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 818
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 821
    aget-object v1, v2, v0

    invoke-interface {v1, p1}, Ljavax/mail/event/ConnectionListener;->opened(Ljavax/mail/event/ConnectionEvent;)V

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 824
    :cond_0
    return-void
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 547
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v1

    .line 548
    new-array v2, v1, [Ljavax/mail/Message;

    .line 549
    const/4 v0, 0x1

    :goto_0
    if-gt v0, v1, :cond_1

    .line 551
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 553
    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public getStore()Ljavax/mail/Store;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract isOpen()Z
.end method

.method protected notifyConnectionListeners(I)V
    .locals 1
    .parameter

    .prologue
    .line 791
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 792
    packed-switch p1, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 795
    :pswitch_0
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->fireOpened(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 798
    :pswitch_1
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->fireDisconnected(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 801
    :pswitch_2
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->fireClosed(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 1025
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1027
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->fireMessagesAdded(Ljavax/mail/event/MessageCountEvent;)V

    .line 1028
    return-void
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1036
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1038
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->fireMessagesRemoved(Ljavax/mail/event/MessageCountEvent;)V

    .line 1039
    return-void
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 719
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 720
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 724
    :try_start_0
    aget-object v2, p2, v0

    invoke-virtual {v2, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/mail/MessageRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Message;

    .line 734
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 735
    return-object v0

    .line 729
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1149
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    .line 1150
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
