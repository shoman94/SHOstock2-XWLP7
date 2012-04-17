.class Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UNCSearchResultsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field public bmpDrwable:Landroid/graphics/drawable/Drawable;

.field public checkInDrawable:Landroid/graphics/drawable/Drawable;

.field public excelDrwable:Landroid/graphics/drawable/Drawable;

.field public fileIcon:Landroid/widget/ImageView;

.field public fileName:Landroid/widget/TextView;

.field public folderDrwable:Landroid/graphics/drawable/Drawable;

.field public gifDrwable:Landroid/graphics/drawable/Drawable;

.field public jpgDrwable:Landroid/graphics/drawable/Drawable;

.field public pdfDrwable:Landroid/graphics/drawable/Drawable;

.field public pngDrwable:Landroid/graphics/drawable/Drawable;

.field public pointDrwable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$1:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

.field public txtDrwable:Landroid/graphics/drawable/Drawable;

.field public unknownDrwable:Landroid/graphics/drawable/Drawable;

.field public wordDrwable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->this$1:Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1329
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->wordDrwable:Landroid/graphics/drawable/Drawable;

    .line 1330
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->excelDrwable:Landroid/graphics/drawable/Drawable;

    .line 1331
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pointDrwable:Landroid/graphics/drawable/Drawable;

    .line 1332
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pdfDrwable:Landroid/graphics/drawable/Drawable;

    .line 1333
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->jpgDrwable:Landroid/graphics/drawable/Drawable;

    .line 1334
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->pngDrwable:Landroid/graphics/drawable/Drawable;

    .line 1335
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->gifDrwable:Landroid/graphics/drawable/Drawable;

    .line 1336
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->bmpDrwable:Landroid/graphics/drawable/Drawable;

    .line 1337
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->unknownDrwable:Landroid/graphics/drawable/Drawable;

    .line 1340
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->folderDrwable:Landroid/graphics/drawable/Drawable;

    .line 1342
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->txtDrwable:Landroid/graphics/drawable/Drawable;

    .line 1343
    iget-object v0, p1, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->checkInDrawable:Landroid/graphics/drawable/Drawable;

    .line 1345
    const v0, 0x7f100137

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileIcon:Landroid/widget/ImageView;

    .line 1346
    const v0, 0x7f100138

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/UNCSearchResultsList$UNCSearchResultsListAdapter$ViewHolder;->fileName:Landroid/widget/TextView;

    .line 1347
    return-void
.end method
