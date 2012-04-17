.class public Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "ChooseContactSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ChooseContactSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseContactListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "title"
    .parameter "resource"
    .parameter "command"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;I)V

    .line 73
    iput p3, p0, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;->mCommand:I

    .line 74
    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/mms/ui/ChooseContactSelectorAdapter$ChooseContactListItem;->mCommand:I

    return v0
.end method
