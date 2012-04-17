.class public Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;
.super Ljava/lang/Object;
.source "JapaneseContextAnalysis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Order"
.end annotation


# instance fields
.field public charLength:I

.field public order:I

.field final synthetic this$0:Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->this$0:Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    .line 60
    return-void
.end method
