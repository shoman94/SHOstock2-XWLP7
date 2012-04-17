.class public Lorg/apache/commons/lang/exception/NestableDelegate;
.super Ljava/lang/Object;
.source "NestableDelegate.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static matchSubclasses:Z = false

.field private static final serialVersionUID:J = 0x1L

.field public static topDown:Z

.field public static trimStackFrames:Z


# instance fields
.field private nestable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    .line 88
    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    .line 98
    sput-boolean v0, Lorg/apache/commons/lang/exception/NestableDelegate;->matchSubclasses:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/exception/Nestable;)V
    .locals 2
    .parameter "nestable"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 109
    instance-of v0, p1, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 110
    check-cast p1, Ljava/lang/Throwable;

    .end local p1
    iput-object p1, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 114
    return-void

    .line 112
    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Nestable implementation passed to the NestableDelegate(Nestable) constructor must extend java.lang.Throwable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3
    .parameter "t"

    .prologue
    .line 365
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 366
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 369
    .local v0, pw:Ljava/io/PrintWriter;
    instance-of v2, p1, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v2, :cond_0

    .line 370
    check-cast p1, Lorg/apache/commons/lang/exception/Nestable;

    .end local p1
    invoke-interface {p1, v0}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    .line 374
    :goto_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getStackFrames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 372
    .restart local p1
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintStream;)V

    .line 281
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 291
    monitor-enter p1

    .line 292
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 293
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/exception/NestableDelegate;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 296
    monitor-exit p1

    .line 297
    return-void

    .line 296
    .end local v0           #pw:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 9
    .parameter "out"

    .prologue
    .line 311
    iget-object v7, p0, Lorg/apache/commons/lang/exception/NestableDelegate;->nestable:Ljava/lang/Throwable;

    .line 313
    .local v7, throwable:Ljava/lang/Throwable;
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 314
    instance-of v8, v7, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v8, :cond_0

    move-object v8, v7

    .line 315
    check-cast v8, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {v8, p1}, Lorg/apache/commons/lang/exception/Nestable;->printPartialStackTrace(Ljava/io/PrintWriter;)V

    .line 353
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {v7, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 323
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v6, stacks:Ljava/util/List;
    :goto_1
    if-eqz v7, :cond_2

    .line 325
    invoke-virtual {p0, v7}, Lorg/apache/commons/lang/exception/NestableDelegate;->getStackFrames(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v5

    .line 326
    .local v5, st:[Ljava/lang/String;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-static {v7}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    .line 328
    goto :goto_1

    .line 331
    .end local v5           #st:[Ljava/lang/String;
    :cond_2
    const-string v4, "Caused by: "

    .line 332
    .local v4, separatorLine:Ljava/lang/String;
    sget-boolean v8, Lorg/apache/commons/lang/exception/NestableDelegate;->topDown:Z

    if-nez v8, :cond_3

    .line 333
    const-string v4, "Rethrown as: "

    .line 334
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 338
    :cond_3
    sget-boolean v8, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames:Z

    if-eqz v8, :cond_4

    .line 339
    invoke-virtual {p0, v6}, Lorg/apache/commons/lang/exception/NestableDelegate;->trimStackFrames(Ljava/util/List;)V

    .line 342
    :cond_4
    monitor-enter p1

    .line 343
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 345
    .restart local v5       #st:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, v5

    .local v3, len:I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 346
    aget-object v8, v5, v1

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 348
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 349
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 352
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;
    .end local v3           #len:I
    .end local v5           #st:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2       #iter:Ljava/util/Iterator;
    :cond_7
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected trimStackFrames(Ljava/util/List;)V
    .locals 9
    .parameter "stacks"

    .prologue
    .line 386
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .local v5, size:I
    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 387
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    .line 388
    .local v0, curr:[Ljava/lang/String;
    add-int/lit8 v7, v2, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v3, v7

    check-cast v3, [Ljava/lang/String;

    .line 390
    .local v3, next:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 391
    .local v1, currList:Ljava/util/List;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v4, nextList:Ljava/util/List;
    invoke-static {v1, v4}, Lorg/apache/commons/lang/exception/ExceptionUtils;->removeCommonFrames(Ljava/util/List;Ljava/util/List;)V

    .line 394
    array-length v7, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    sub-int v6, v7, v8

    .line 395
    .local v6, trimmed:I
    if-lez v6, :cond_0

    .line 396
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\t... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " more"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v2, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 403
    .end local v0           #curr:[Ljava/lang/String;
    .end local v1           #currList:Ljava/util/List;
    .end local v3           #next:[Ljava/lang/String;
    .end local v4           #nextList:Ljava/util/List;
    .end local v6           #trimmed:I
    :cond_1
    return-void
.end method
