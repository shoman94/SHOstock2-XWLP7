.class public Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.super Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/android/contacts/activities/DialtactsActivity$ViewPagerVisibilityListener;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallLogFragment$Tasks;
    }
.end annotation


# static fields
.field public static FMC_MODE:Z

.field private static bCallLogPaused:Z

.field public static bCheckedBefore:Z

.field private static bCheckedFirstTime:Z

.field private static mContext:Landroid/content/Context;

.field private static mContextForDialog:Landroid/content/Context;

.field private static mNumberForDialog:Ljava/lang/String;


# instance fields
.field private final CONTEXTMENU_BLOCKCONTACT:I

.field private final CONTEXTMENU_CALL:I

.field private final CONTEXTMENU_EDITNUMBER:I

.field private final CONTEXTMENU_REMOVELOG:I

.field private final CONTEXTMENU_SAVECONTACT:I

.field private final CONTEXTMENU_SENDINFO:I

.field private final CONTEXTMENU_SENDMSG:I

.field private final CONTEXTMENU_UNBLOCKCONTACT:I

.field private final CONTEXTMENU_VIEWCONTACT:I

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

.field public mAddContactDlg:Landroid/app/AlertDialog;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

.field public mCallType:I

.field private mItemPosition:Ljava/lang/Integer;

.field private mItemSize:Ljava/lang/Integer;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field public mScrollToTop:Z

.field private mShowOptionsMenu:Z

.field public mStrNumber:Ljava/lang/String;

.field private mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mViewByDlg:Landroid/app/AlertDialog;

.field private mVoiceMailNumber:Ljava/lang/String;

.field public mWhichButton:I

.field private mstrName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 142
    sput-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 161
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 162
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    .line 163
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 168
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallType:I

    .line 125
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    .line 148
    iput v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_CALL:I

    .line 149
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDMSG:I

    .line 150
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_EDITNUMBER:I

    .line 151
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SENDINFO:I

    .line 152
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_VIEWCONTACT:I

    .line 153
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_SAVECONTACT:I

    .line 154
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_BLOCKCONTACT:I

    .line 155
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_UNBLOCKCONTACT:I

    .line 156
    const/16 v0, 0x9

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->CONTEXTMENU_REMOVELOG:I

    .line 179
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    return p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/android/contacts/util/AsyncTaskExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    return-object v0
.end method

.method private loadPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "logslist_pref"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "reject_popup"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    .line 420
    return-void
.end method

.method private openViewByDialog()V
    .locals 4

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 777
    .local v0, arrayId:I
    const/high16 v0, 0x7f06

    .line 780
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a029d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$10;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0286

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$9;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 798
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->invalidateCache()V

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startCallsQuery()V

    .line 888
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnEntry()V

    .line 889
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 2

    .prologue
    .line 894
    :try_start_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 896
    if-eqz v0, :cond_0

    .line 897
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 905
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string v0, "CallLogFragment"

    const-string v1, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 902
    :catch_0
    move-exception v0

    .line 903
    const-string v0, "CallLogFragment"

    const-string v1, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "mContext"
    .parameter "mNumber"

    .prologue
    .line 569
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 570
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400ad

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 572
    .local v0, discover_notify:Landroid/widget/LinearLayout;
    const v4, 0x7f0d01ec

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 574
    .local v3, notify_confirm:Landroid/widget/LinearLayout;
    const v4, 0x7f0d01ed

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 577
    .local v2, not_show_again:Landroid/widget/CheckBox;
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContextForDialog:Landroid/content/Context;

    .line 578
    sput-object p1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mNumberForDialog:Ljava/lang/String;

    .line 580
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;

    invoke-direct {v4, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$5;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0297

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02b9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a02b8

    new-instance v6, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;

    invoke-direct {v6, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$6;-><init>(Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 598
    return-void
.end method

.method private updateOnEntry()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 915
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 910
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .parameter "onEntry"

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 925
    if-nez p1, :cond_0

    .line 926
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 928
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 930
    :cond_1
    return-void
.end method

.method private updateSweepActionFeasibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 945
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isSweepActionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 952
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 953
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    goto :goto_0

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v0, :cond_3

    .line 956
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->configureSweepActionCallbackAndListener()V

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public callSelectedEntry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v0

    .line 810
    if-gez v0, :cond_0

    .line 814
    const/4 v0, 0x0

    .line 816
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 817
    if-eqz v0, :cond_1

    .line 818
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 819
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "-4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 850
    :cond_1
    :goto_0
    return-void

    .line 830
    :cond_2
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "sip"

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 846
    :goto_1
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 836
    :cond_3
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 837
    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 841
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->getBetterNumberFromContacts(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 5

    .prologue
    .line 226
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwSweepActionListView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V

    .line 227
    new-instance v0, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionListener;-><init>(Landroid/content/Context;Lcom/sec/android/touchwiz/widget/TwListView;Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 229
    return-void
.end method

.method public fetchLogs()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "CallLogFragment"

    const-string v1, "========= fetchLogs ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 402
    return-void
.end method

.method public getAdapter()Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 854
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 268
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCallsFetched ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 276
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    .line 278
    .local v0, listView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getFirstVisiblePosition()I

    move-result v1

    if-le v1, v4, :cond_2

    .line 279
    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSelection(I)V

    .line 281
    :cond_2
    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->smoothScrollToPosition(I)V

    .line 282
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 658
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 659
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    .line 660
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 720
    :cond_0
    :goto_0
    return v9

    .line 665
    :pswitch_0
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 668
    :pswitch_1
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->editCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openSaveToDialog()V

    goto :goto_0

    .line 676
    :pswitch_3
    const/4 v6, -0x1

    .line 677
    .local v6, contact_Id:I
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 682
    .local v7, phonesCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 683
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 684
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 685
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 687
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_2
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->viewContact(Landroid/content/Context;I)V

    goto :goto_0

    .line 694
    .end local v6           #contact_Id:I
    .end local v7           #phonesCursor:Landroid/database/Cursor;
    :pswitch_4
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeSms(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 698
    :pswitch_5
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_3

    .line 699
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->blockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_3
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showAddtoRejectListConfirmDlg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :pswitch_6
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->unblockContact(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :pswitch_7
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->sendContactInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :pswitch_8
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->showDeleteLogsConfirmDlg()V

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 249
    const-string v0, "CallLogFragment"

    const-string v1, "========= onCreate ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 252
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    .line 254
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    .line 255
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 256
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 258
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->loadPref()V

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 263
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 424
    invoke-super/range {p0 .. p3}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 425
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateContextMenu ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .local v10, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    const/4 v15, 0x0

    .line 435
    .local v15, tv:Landroid/widget/TextView;
    const v1, 0x7f0d0082

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #tv:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 436
    .restart local v15       #tv:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 438
    const v1, 0x7f0d007f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #tv:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 439
    .restart local v15       #tv:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    .line 441
    const v1, 0x7f0d007f

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #tv:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 442
    .restart local v15       #tv:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemPosition:Ljava/lang/Integer;

    .line 444
    const v1, 0x7f0d0083

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .end local v15           #tv:Landroid/widget/TextView;
    check-cast v15, Landroid/widget/TextView;

    .line 445
    .restart local v15       #tv:Landroid/widget/TextView;
    invoke-virtual {v15}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mItemSize:Ljava/lang/Integer;

    .line 462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 464
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v4, 0x0

    const v5, 0x7f0a028e

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 540
    .end local v10           #info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .end local v15           #tv:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v8

    .line 430
    .local v8, e:Ljava/lang/ClassCastException;
    invoke-virtual {v8}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 468
    .end local v8           #e:Ljava/lang/ClassCastException;
    .restart local v10       #info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    .restart local v15       #tv:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 474
    :goto_1
    const/4 v9, 0x0

    .line 475
    .local v9, formatPhoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a028f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 478
    .local v11, menu_call:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 481
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const v5, 0x7f0a0290

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 482
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const v5, 0x7f0a0291

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 485
    :cond_2
    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v4, 0x0

    const v5, 0x7f0a028e

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 487
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 493
    .local v13, phonesCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    .line 494
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 495
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0293

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 496
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v4, 0x0

    const v5, 0x7f0a0295

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 501
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 508
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    const/4 v12, 0x0

    .line 510
    .local v12, nReject_match:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mStrNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 511
    .local v14, rejectNum:Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 512
    .local v16, where:Ljava/lang/StringBuffer;
    const-string v1, "reject_number="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string v1, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 515
    const-string v1, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v1, " AND reject_match="

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 518
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v3, v1

    .line 522
    .local v3, projection:[Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sec.android.app.callsetting.allcalls/reject_num"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 526
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 528
    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v4, 0x0

    const v5, 0x7f0a0297

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 534
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 471
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v9           #formatPhoneNumber:Ljava/lang/String;
    .end local v11           #menu_call:Ljava/lang/String;
    .end local v12           #nReject_match:I
    .end local v13           #phonesCursor:Landroid/database/Cursor;
    .end local v14           #rejectNum:Ljava/lang/String;
    .end local v16           #where:Ljava/lang/StringBuffer;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mstrName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 498
    .restart local v9       #formatPhoneNumber:Ljava/lang/String;
    .restart local v11       #menu_call:Ljava/lang/String;
    .restart local v13       #phonesCursor:Landroid/database/Cursor;
    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0294

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 499
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const v5, 0x7f0a0296

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 503
    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v4, 0x0

    const v5, 0x7f0a0296

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 504
    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const v5, 0x7f0a0294

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 531
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v12       #nReject_match:I
    .restart local v14       #rejectNum:Ljava/lang/String;
    .restart local v16       #where:Ljava/lang/StringBuffer;
    :cond_6
    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0a029b

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4

    .line 536
    :cond_7
    const-string v1, "CallLogFragment"

    const-string v2, "onCreateContextMenu - Cursor c is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 725
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 726
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_0

    .line 727
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 729
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 291
    const-string v1, "CallLogFragment"

    const-string v2, "========= onCreateView ========="

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const v1, 0x7f04000f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 293
    .local v0, view:Landroid/view/View;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 295
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setSweepActionEnabled(Z)V

    .line 297
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "CallLogFragment"

    const-string v1, "========= onDestroy ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onDestroy()V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 386
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 740
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 762
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 742
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 743
    const-string v2, "additional"

    const-string v3, "phone-need-call"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 747
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->openViewByDialog()V

    goto :goto_0

    .line 751
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    const-string v2, "view_by"

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 757
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/dialertab/calllog/CallDurationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 758
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 740
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0247
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "CallLogFragment"

    const-string v1, "========= onPause ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onPause()V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->stopRequestProcessing()V

    .line 362
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 363
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->saveViewStatusPreference()V

    .line 371
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    if-nez v0, :cond_0

    .line 734
    const v0, 0x7f0d0249

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 736
    :cond_0
    return-void

    .line 734
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    const-string v0, "CallLogFragment"

    const-string v1, "========= onResume ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onResume()V

    .line 339
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    .line 340
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCallLogPaused:Z

    .line 341
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedFirstTime:Z

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->haveVOIPCalls(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->FMC_MODE:Z

    .line 351
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStart()V

    .line 333
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 375
    invoke-super {p0}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onStop()V

    .line 376
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 377
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    .line 302
    const-string v0, "CallLogFragment"

    const-string v1, "========= onViewCreated ========="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 304
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 305
    .local v4, currentCountryIso:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mVoiceMailNumber:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$CallFetcher;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setItemsCanFocus(Z)V

    .line 308
    iput-boolean v6, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mScrollToTop:Z

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 327
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 864
    iget-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    if-eq v1, p1, :cond_0

    .line 865
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mShowOptionsMenu:Z

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 868
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 873
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->refreshData()V

    .line 877
    :cond_1
    if-nez p1, :cond_2

    .line 878
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateOnExit()V

    .line 880
    :cond_2
    return-void
.end method

.method public openSaveToDialog()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0296

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0286

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    .line 565
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAddContactDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 566
    return-void
.end method

.method public registerForList(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 355
    return-void
.end method

.method public saveViewStatusPreference()V
    .locals 5

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "logslist_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 412
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "reject_popup"

    sget-boolean v3, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->bCheckedBefore:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    return-void
.end method

.method protected setCallLogAdapter(I)V
    .locals 1
    .parameter "selection"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mViewByDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 806
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;)V
    .locals 0
    .parameter "sweepActionBarCallBack"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/dialertab/widget/DialtactsListSweepActionHandler;

    .line 235
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 934
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionEnabled:Z

    .line 935
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateSweepActionFeasibility()V

    .line 936
    return-void
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "sweepActionListener"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 240
    return-void
.end method

.method public showDeleteLogsConfirmDlg()V
    .locals 5

    .prologue
    .line 602
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    .local v1, deleteLogsDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a02b7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a02b8

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$8;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0286

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 649
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 651
    .local v0, alert:Landroid/app/AlertDialog;
    const v2, 0x7f0a0038

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 652
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 654
    return-void
.end method

.method public startCallsQuery()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->setLoading(Z)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mWhichButton:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->fetchAllLogs(I)V

    .line 408
    return-void
.end method
