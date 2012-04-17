.class public Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;
.super Landroid/app/Fragment;
.source "AccountSettingsOutOfOfficeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    }
.end annotation


# instance fields
.field private final FLAG_CANCEL_PRESEED:I

.field private final FLAG_DONE_PRESSED:I

.field private final FLAG_INVALID_DATES:I

.field private final FLAG_RESET:I

.field private final OOO_GET_ERROR:I

.field private final OOO_NO_PROTOCOL_SUPPORT:I

.field private final OOO_NO_STATUS:I

.field private final OOO_PROCESSING:I

.field private final OOO_RESPONSE_PARSE:I

.field private final OOO_SERVER_CONNECT:I

.field private final OOO_SET_ERROR:I

.field private final OOO_STATUS_COMPLETE:I

.field private final OOO_UNKNOWN_ERROR:I

.field private mAccountId:J

.field private mCheckFlag:I

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mEnableDateTimeCB:Landroid/widget/CheckBox;

.field private mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

.field private mEndDate:Ljava/util/Date;

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mExternalKnownMsgState:I

.field private mExternalMsgCB:Landroid/widget/CheckBox;

.field private mExternalMsgCBLayout:Landroid/widget/LinearLayout;

.field private mExternalMsgEditText:Landroid/widget/EditText;

.field private mExternalUnKnownMsgState:I

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mInternalMsgEditText:Landroid/widget/EditText;

.field private mInternalMsgState:I

.field private mIsStartDate:Z

.field private mIsStartTime:Z

.field mIsUIOn:Z

.field private mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

.field private mLoaded:Z

.field private mMessageForExternalKnownUsers:Ljava/lang/String;

.field private mMessageForExternalUnknownUsers:Ljava/lang/String;

.field private mMessageForInternalUsers:Ljava/lang/String;

.field private mMinute:I

.field private mMonth:I

.field private mMonths:[Ljava/lang/String;

.field private mOofOnOrOffCheck:Landroid/widget/CheckBox;

.field private mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

.field private mOofState:Z

.field private mProgressDlg:Landroid/app/ProgressDialog;

.field private mRbKnown:Landroid/widget/RadioButton;

.field private mRbKnownLayout:Landroid/widget/LinearLayout;

.field private mRbUnKnown:Landroid/widget/RadioButton;

.field private mRbUnKnownLayout:Landroid/widget/LinearLayout;

.field private mStartDate:Ljava/util/Date;

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 78
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_RESET:I

    .line 80
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_DONE_PRESSED:I

    .line 82
    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_CANCEL_PRESEED:I

    .line 84
    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->FLAG_INVALID_DATES:I

    .line 92
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    .line 121
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    .line 177
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 179
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 196
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 211
    iput v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_STATUS_COMPLETE:I

    .line 213
    iput v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_STATUS:I

    .line 215
    iput v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_NO_PROTOCOL_SUPPORT:I

    .line 217
    iput v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_PROCESSING:I

    .line 219
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SET_ERROR:I

    .line 221
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_GET_ERROR:I

    .line 223
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_SERVER_CONNECT:I

    .line 225
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_RESPONSE_PARSE:I

    .line 227
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->OOO_UNKNOWN_ERROR:I

    .line 231
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    .line 233
    new-instance v0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$3;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    .line 1170
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartDate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/DatePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/TimePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/RadioButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsStartTime:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mProgressDlg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->onSetOutOfOfficeComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method private onSetOutOfOfficeComplete(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x64

    const/4 v0, 0x0

    .line 1148
    .line 1149
    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 1151
    if-eqz p1, :cond_0

    .line 1153
    const-class v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1155
    sget-object v0, Lcom/android/emailcommon/utility/OoOConstants;->OOO_SET_DATA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1158
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1159
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080355

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1163
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1165
    if-eqz v0, :cond_1

    .line 1166
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1168
    :cond_1
    return-void

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f080356

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private prepareDateTimeButtons()V
    .locals 2

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1052
    .local v0, value:Z
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1053
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1054
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1055
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1056
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1057
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1058
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1059
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1061
    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    .line 1063
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    .line 1065
    :cond_0
    return-void
.end method

.method private prepareStartUpUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 722
    const/4 v2, 0x0

    .line 723
    .local v2, isTimeBased:Z
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ooo_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 724
    .local v0, data:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 726
    .local v3, oodl:Lcom/android/emailcommon/service/OoODataList;
    if-eqz v0, :cond_0

    .line 727
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 728
    sget-object v5, Lcom/android/emailcommon/utility/OoOConstants;->OOO_GET_DATA:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #oodl:Lcom/android/emailcommon/service/OoODataList;
    check-cast v3, Lcom/android/emailcommon/service/OoODataList;

    .line 731
    .restart local v3       #oodl:Lcom/android/emailcommon/service/OoODataList;
    :cond_0
    if-eqz v3, :cond_e

    .line 732
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lcom/android/emailcommon/service/OoODataList;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_e

    .line 733
    invoke-virtual {v3, v1}, Lcom/android/emailcommon/service/OoODataList;->getItem(I)Lcom/android/emailcommon/service/OoOData;

    move-result-object v4

    .line 734
    .local v4, singleData:Lcom/android/emailcommon/service/OoOData;
    if-eqz v4, :cond_1

    .line 735
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->state:I

    packed-switch v5, :pswitch_data_0

    .line 732
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 737
    :pswitch_0
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 738
    iput-boolean v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 739
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 741
    :pswitch_1
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_2

    .line 742
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 745
    :goto_2
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 748
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 744
    :cond_2
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_2

    .line 753
    :pswitch_2
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_3

    .line 754
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 755
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 756
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 759
    :goto_3
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 762
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 758
    :cond_3
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_3

    .line 767
    :pswitch_3
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_5

    .line 768
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 769
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 770
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 773
    :goto_4
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 776
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 778
    :cond_4
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 772
    :cond_5
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_4

    .line 789
    :pswitch_4
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 790
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 791
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_2

    goto :goto_1

    .line 793
    :pswitch_5
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_6

    .line 794
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 797
    :goto_5
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 800
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 796
    :cond_6
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_5

    .line 805
    :pswitch_6
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_7

    .line 806
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 807
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 808
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 811
    :goto_6
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 814
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 810
    :cond_7
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_6

    .line 819
    :pswitch_7
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_9

    .line 820
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 821
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 822
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 825
    :goto_7
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 828
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 830
    :cond_8
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 824
    :cond_9
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_7

    .line 841
    :pswitch_8
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    .line 842
    iput-boolean v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    .line 843
    if-nez v2, :cond_a

    .line 844
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->start:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    .line 845
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->end:Ljava/util/Date;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    .line 846
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 847
    const/4 v2, 0x1

    .line 849
    :cond_a
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->type:I

    packed-switch v5, :pswitch_data_3

    goto/16 :goto_1

    .line 851
    :pswitch_9
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_b

    .line 852
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    .line 855
    :goto_8
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 858
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 854
    :cond_b
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgState:I

    goto :goto_8

    .line 863
    :pswitch_a
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_c

    .line 864
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    .line 865
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 868
    :goto_9
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 871
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 873
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 867
    :cond_c
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    goto :goto_9

    .line 880
    :pswitch_b
    iget v5, v4, Lcom/android/emailcommon/service/OoOData;->enabled:I

    if-ne v5, v7, :cond_d

    .line 881
    iput v7, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    .line 882
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 885
    :goto_a
    iget-object v5, v4, Lcom/android/emailcommon/service/OoOData;->msg:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 889
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 891
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 884
    :cond_d
    iput v8, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    goto :goto_a

    .line 910
    .end local v1           #i:I
    .end local v4           #singleData:Lcom/android/emailcommon/service/OoOData;
    :cond_e
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 911
    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-eq v5, v7, :cond_f

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalUnKnownMsgState:I

    if-nez v5, :cond_12

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-nez v5, :cond_12

    .line 913
    :cond_f
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 925
    :cond_10
    :goto_b
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v5

    if-nez v5, :cond_11

    .line 926
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 928
    :cond_11
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->toggleAllUIState()V

    .line 929
    return-void

    .line 914
    :cond_12
    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalKnownMsgState:I

    if-ne v5, v7, :cond_10

    .line 915
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 916
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 920
    :cond_13
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v5, :cond_10

    .line 921
    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v5, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b

    .line 735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    .line 739
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 791
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 849
    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private sendDataToExchange()V
    .locals 12

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x0

    const/4 v11, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1068
    const/4 v7, 0x0

    .line 1070
    .local v7, isTimeBased:Z
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    .line 1071
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v4, v5}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1074
    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofState:Z

    if-ne v4, v3, :cond_b

    .line 1076
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1077
    .local v8, text:Landroid/text/Editable;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1078
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 1079
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 1081
    :cond_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1082
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    .line 1083
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    .line 1086
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1087
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    .line 1088
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    .line 1091
    :cond_2
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    .line 1092
    .local v0, oodl:Lcom/android/emailcommon/service/OoODataList;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1093
    const/4 v7, 0x1

    .line 1094
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-gtz v4, :cond_3

    .line 1095
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f08035c

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1096
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1097
    iput v11, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 1144
    .end local v8           #text:Landroid/text/Editable;
    :goto_0
    return-void

    .line 1100
    .restart local v8       #text:Landroid/text/Editable;
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v4, v4, v9

    if-gtz v4, :cond_4

    .line 1101
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f08035c

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1102
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mListener:Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$Listener;

    invoke-virtual {v1, v2}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 1103
    iput v11, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    goto :goto_0

    .line 1107
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 1108
    if-eqz v7, :cond_7

    .line 1109
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 1117
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1118
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1119
    if-eqz v7, :cond_8

    .line 1120
    const/4 v1, 0x5

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    .line 1138
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto :goto_0

    .line 1112
    :cond_7
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForInternalUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v4}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_1

    .line 1124
    :cond_8
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalKnownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 1127
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1128
    if-eqz v7, :cond_a

    .line 1129
    const/4 v1, 0x6

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual/range {v0 .. v6}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;Ljava/util/Date;Ljava/util/Date;)I

    goto :goto_2

    .line 1133
    :cond_a
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMessageForExternalUnknownUsers:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    goto :goto_2

    .line 1140
    .end local v0           #oodl:Lcom/android/emailcommon/service/OoODataList;
    .end local v8           #text:Landroid/text/Editable;
    :cond_b
    new-instance v0, Lcom/android/emailcommon/service/OoODataList;

    invoke-direct {v0}, Lcom/android/emailcommon/service/OoODataList;-><init>()V

    .line 1141
    .restart local v0       #oodl:Lcom/android/emailcommon/service/OoODataList;
    const-string v1, ""

    invoke-virtual {v0, v11, v6, v6, v1}, Lcom/android/emailcommon/service/OoODataList;->AddOoOData(IIILjava/lang/String;)I

    .line 1142
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/email/Controller;->setOutOfOffice(JLcom/android/emailcommon/service/OoODataList;)V

    goto/16 :goto_0
.end method

.method private toggleAllUIState()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 933
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 934
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 935
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 936
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 937
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 939
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 940
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 941
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 943
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 945
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 947
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 949
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 950
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 951
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 954
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-nez v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 956
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 959
    :cond_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    if-eqz v0, :cond_2

    .line 960
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    .line 961
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 962
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 967
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 968
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setFocusable(Z)V

    .line 971
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mIsUIOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 973
    return-void
.end method

.method private updateEndDateTime()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 989
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    .line 990
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    .line 991
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    .line 992
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    .line 993
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    .line 995
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 997
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 999
    return-void
.end method

.method private updateStartDateTime()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 976
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    .line 977
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    .line 978
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonth:I

    .line 979
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    .line 980
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    iput v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    .line 982
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {p0, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V

    .line 984
    iget-object v6, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    new-instance v0, Ljava/util/Date;

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mHour:I

    iget v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMinute:I

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v5}, Ljava/util/Date;-><init>(IIIII)V

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 986
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 559
    :pswitch_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 572
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 574
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 582
    :pswitch_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 586
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 593
    :pswitch_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 595
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x7f100214
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 279
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 280
    if-eqz p1, :cond_0

    .line 281
    const-string v0, "AccountSettingsOutOfOfficeFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mLoaded:Z

    .line 283
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 512
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 513
    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 514
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    .line 292
    iget-wide v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mAccountId:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 294
    .local v2, pa:Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    invoke-virtual {v2, p0, v6, v4}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 297
    .end local v2           #pa:Landroid/preference/PreferenceActivity;
    :cond_0
    const v4, 0x7f04000a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 299
    .local v3, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    .line 301
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    .line 302
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    .line 303
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getDate()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Date;->setDate(I)V

    .line 304
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 305
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDate:Ljava/util/Date;

    invoke-virtual {v4, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 307
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    .line 310
    const v4, 0x7f100216

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    .line 316
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$4;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 324
    const v4, 0x7f100214

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    .line 325
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheckLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 333
    const v4, 0x7f100218

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    .line 334
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$5;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 340
    const v4, 0x7f100217

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    .line 341
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    const v4, 0x7f10021a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    .line 349
    const v4, 0x7f10021d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    .line 351
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$6;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$7;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 375
    const-string v0, "MM-dd-yyyy"

    .line 385
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndDateButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 389
    const v4, 0x7f10021b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    .line 390
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mStartTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$8;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    const v4, 0x7f10021e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    .line 402
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEndTimeButton:Landroid/widget/Button;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$9;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateStartDateTime()V

    .line 413
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->updateEndDateTime()V

    .line 416
    const v4, 0x7f100224

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    .line 417
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$10;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 426
    const v4, 0x7f100223

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    .line 427
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 430
    const v4, 0x7f100226

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    .line 431
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$11;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    const v4, 0x7f100225

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    .line 442
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnownLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 444
    const v4, 0x7f100220

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    .line 445
    const v4, 0x7f100229

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgEditText:Landroid/widget/EditText;

    .line 446
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;

    invoke-direct {v1, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$12;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    .line 458
    .local v1, focusChanged:Landroid/view/View$OnFocusChangeListener;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mInternalMsgEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 459
    const v4, 0x7f100222

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    .line 460
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;

    invoke-direct {v5, p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment$13;-><init>(Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 476
    const v4, 0x7f100221

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    .line 478
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCBLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareStartUpUI()V

    .line 483
    return-object v3

    .line 376
    .end local v1           #focusChanged:Landroid/view/View$OnFocusChangeListener;
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 379
    :cond_4
    const-string v0, "yyyy-MM-dd"

    goto/16 :goto_0

    .line 381
    :cond_5
    const-string v0, "dd-MM-yyyy"

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x3

    .line 524
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 525
    .local v0, pa:Landroid/preference/PreferenceActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 542
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 528
    :pswitch_0
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_0

    .line 529
    :cond_1
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 530
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->sendDataToExchange()V

    goto :goto_0

    .line 535
    :pswitch_1
    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    if-ne v1, v2, :cond_0

    .line 536
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mCheckFlag:I

    .line 537
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 525
    nop

    :pswitch_data_0
    .packed-switch 0x7f1002b4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 501
    invoke-virtual {p0, v4}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    .line 502
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 504
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, view:Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 506
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 507
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 508
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    .line 518
    const v0, 0x7f1002b4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    const v0, 0x7f1002b5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->prepareDateTimeButtons()V

    .line 496
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 497
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->setHasOptionsMenu(Z)V

    .line 489
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 490
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 606
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 718
    :cond_0
    :goto_0
    return v0

    .line 608
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 628
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 651
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 674
    :sswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_3

    goto :goto_0

    .line 677
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto :goto_0

    .line 610
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 613
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 616
    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 617
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 621
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 620
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 624
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mOofOnOrOffCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 630
    :pswitch_5
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 634
    :pswitch_6
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0

    .line 637
    :pswitch_7
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 638
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 639
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 643
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 642
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 647
    :pswitch_8
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mEnableDateTimeCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    .line 653
    :pswitch_9
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    .line 657
    :pswitch_a
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    .line 660
    :pswitch_b
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 662
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 663
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 666
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 665
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 670
    :pswitch_c
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mExternalMsgCB:Landroid/widget/CheckBox;

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_0

    .line 680
    :pswitch_d
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 683
    :pswitch_e
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    .line 684
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_4

    .line 685
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 686
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 689
    :pswitch_f
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 696
    :sswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 697
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_0

    .line 699
    :pswitch_10
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 702
    :pswitch_11
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 705
    :pswitch_12
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    .line 707
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 708
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    goto/16 :goto_0

    .line 712
    :pswitch_13
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mRbUnKnown:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto/16 :goto_0

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x7f100214 -> :sswitch_0
        0x7f100217 -> :sswitch_1
        0x7f100221 -> :sswitch_2
        0x7f100223 -> :sswitch_3
        0x7f100225 -> :sswitch_4
    .end sparse-switch

    .line 608
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 628
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 651
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 675
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_f
    .end packed-switch

    .line 697
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_10
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public setDateButtonText(Landroid/widget/Button;Ljava/util/Date;)V
    .locals 6
    .parameter "button"
    .parameter "date"

    .prologue
    .line 1004
    const-string v2, ""

    .line 1005
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, currentFormat:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1011
    const-string v0, "MM-dd-yyyy"

    .line 1021
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1022
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0805ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, koreaDay:Ljava/lang/String;
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1042
    .end local v1           #koreaDay:Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    return-void

    .line 1012
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1015
    :cond_4
    const-string v0, "yyyy-MM-dd"

    goto :goto_0

    .line 1017
    :cond_5
    const-string v0, "dd-MM-yyyy"

    goto :goto_0

    .line 1025
    .restart local v1       #koreaDay:Ljava/lang/String;
    :cond_6
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1026
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1027
    :cond_7
    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1031
    .end local v1           #koreaDay:Ljava/lang/String;
    :cond_8
    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1032
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1033
    :cond_9
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 1035
    :cond_a
    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mMonths:[Ljava/lang/String;

    invoke-virtual {p2}, Ljava/util/Date;->getMonth()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/email/activity/setup/AccountSettingsOutOfOfficeFragment;->mYear:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1
.end method
