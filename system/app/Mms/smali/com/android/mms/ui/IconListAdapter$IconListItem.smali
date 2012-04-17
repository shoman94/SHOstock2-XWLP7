.class public Lcom/android/mms/ui/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mResource:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "title"
    .parameter "resource"

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p2, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:I

    .line 106
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public getResource()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
