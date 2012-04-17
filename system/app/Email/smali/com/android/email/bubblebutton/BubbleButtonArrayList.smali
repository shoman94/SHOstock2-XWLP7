.class public Lcom/android/email/bubblebutton/BubbleButtonArrayList;
.super Ljava/lang/Object;
.source "BubbleButtonArrayList.java"


# instance fields
.field private arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/bubblebutton/BubbleButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButtonArrayList;->arrayList:Ljava/util/ArrayList;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/bubblebutton/BubbleButtonArrayList;->arrayList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method
