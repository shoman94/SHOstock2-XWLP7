.class public Lcom/android/email/activity/ColorPickerDialog;
.super Landroid/app/AlertDialog;
.source "ColorPickerDialog.java"


# instance fields
.field private colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

.field private gradientView:Lcom/android/email/activity/GradientColorPicker;

.field private mColorPicker:Lcom/android/email/activity/ColorPickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v2, Lcom/android/email/activity/ColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/email/activity/ColorPickerDialog$1;-><init>(Lcom/android/email/activity/ColorPickerDialog;)V

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    .line 32
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04004d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 35
    .local v1, layout:Landroid/widget/ScrollView;
    invoke-virtual {p0, v1}, Lcom/android/email/activity/ColorPickerDialog;->setView(Landroid/view/View;)V

    .line 36
    const v2, 0x7f1000f4

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/GradientColorPicker;

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    .line 37
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/android/email/activity/GradientColorPicker;->setBackgroundColor(I)V

    .line 38
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->gradientView:Lcom/android/email/activity/GradientColorPicker;

    iget-object v3, p0, Lcom/android/email/activity/ColorPickerDialog;->colorChangedListener:Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/email/activity/GradientColorPicker;->setColorchangedListener(Lcom/android/email/activity/GradientColorPicker$ColorChangedListener;)V

    .line 39
    const v2, 0x7f1000f3

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/ColorPickerView;

    iput-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    .line 40
    iget-object v2, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v2, v4, v4}, Lcom/android/email/activity/ColorPickerView;->initColorPicker(II)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ColorPickerDialog;)Lcom/android/email/activity/ColorPickerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    return-object v0
.end method


# virtual methods
.method public GetCurColorIdx()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerView;->GetCurColorIdx()I

    move-result v0

    return v0
.end method

.method public SetColor(II)V
    .locals 1
    .parameter "Color"
    .parameter "_idx"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->setSelectorColor(I)V

    .line 61
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p2}, Lcom/android/email/activity/ColorPickerView;->SetCurColorIdx(I)V

    .line 62
    return-void
.end method

.method public SetSelectedColor(I)V
    .locals 1
    .parameter "Color"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ColorPickerView;->SetSelectedColor(I)V

    .line 66
    return-void
.end method

.method public getSelectedColor()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/email/activity/ColorPickerDialog;->mColorPicker:Lcom/android/email/activity/ColorPickerView;

    invoke-virtual {v0}, Lcom/android/email/activity/ColorPickerView;->getSelectorColor()I

    move-result v0

    return v0
.end method
