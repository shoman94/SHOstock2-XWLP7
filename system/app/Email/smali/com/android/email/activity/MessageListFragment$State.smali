.class public Lcom/android/email/activity/MessageListFragment$State;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/MessageListFragment$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4309
    new-instance v0, Lcom/android/email/activity/MessageListFragment$State$1;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$State$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListFragment$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 4287
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment$State;->mListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 4289
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4284
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 2
    .parameter "messageListFragment"

    .prologue
    .line 4291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4292
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p1}, Lcom/android/email/activity/MessageListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment$State;->mListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 4293
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4284
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$State;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 4301
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Lcom/android/email/activity/MessageListFragment;)V
    .locals 1
    .parameter "messageListFragment"

    .prologue
    .line 4296
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$State;->mListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSavedListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;
    invoke-static {p1, v0}, Lcom/android/email/activity/MessageListFragment;->access$2502(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/utility/Utility$ListStateSaver;)Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    .line 4297
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 4306
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$State;->mListState:Lcom/android/emailcommon/utility/Utility$ListStateSaver;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4307
    return-void
.end method
