.class public interface abstract Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract abandonEdit()V
.end method

.method public abstract deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end method

.method public abstract onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end method

.method public abstract onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end method

.method public abstract onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end method

.method public abstract onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
.end method

.method public abstract updateAccounts()V
.end method
