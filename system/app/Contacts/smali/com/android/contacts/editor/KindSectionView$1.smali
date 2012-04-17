.class Lcom/android/contacts/editor/KindSectionView$1;
.super Ljava/lang/Object;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/KindSectionView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/KindSectionView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/KindSectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->addItem()V

    .line 133
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView$1;->this$0:Lcom/android/contacts/editor/KindSectionView;

    invoke-virtual {v0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 134
    return-void
.end method
