.class public Lcom/android/email/combined/CombinedEmailManager;
.super Ljava/lang/Object;
.source "CombinedEmailManager.java"


# static fields
.field private static mInstance:Lcom/android/email/combined/CombinedEmailManager;


# instance fields
.field private mAccountFacade:Lcom/android/email/combined/AccountFacade;

.field private mContext:Landroid/content/Context;

.field private mMessageFacade:Lcom/android/email/combined/MessageFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 12
    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    .line 17
    iput-object p1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;
    .locals 2
    .parameter

    .prologue
    .line 21
    sget-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    if-nez v0, :cond_0

    .line 22
    const-class v1, Lcom/android/email/combined/CombinedEmailManager;

    monitor-enter v1

    .line 23
    :try_start_0
    new-instance v0, Lcom/android/email/combined/CombinedEmailManager;

    invoke-direct {v0, p0}, Lcom/android/email/combined/CombinedEmailManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    sget-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAccountFacade()Lcom/android/email/combined/AccountFacade;
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/email/combined/AccountFacade;

    iget-object v1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/combined/AccountFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    return-object v0
.end method

.method public getMessageFacade()Lcom/android/email/combined/MessageFacade;
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/android/email/combined/MessageFacade;

    iget-object v1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/combined/MessageFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    return-object v0
.end method
