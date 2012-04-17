.class public Lcom/android/email/EmailAddressAdapter;
.super Lcom/android/common/contacts/BaseEmailAddressAdapterSec;
.source "EmailAddressAdapter.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 60
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "inputText"
    .parameter "pictureData"

    .prologue
    .line 77
    const v15, 0x7f100142

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 78
    .local v12, text1:Landroid/widget/TextView;
    const v15, 0x7f1000fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 79
    .local v13, text2:Landroid/widget/TextView;
    const v15, 0x7f1000fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 82
    .local v14, text3:Landroid/widget/TextView;
    const v15, 0x7f100245

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 83
    .local v6, iv1:Landroid/widget/ImageView;
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 89
    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    if-eqz p4, :cond_0

    const-string v15, "gal_search_show_more"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f080510

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 95
    .local v11, showMore:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 96
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const/16 v15, 0x11

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    move-object/from16 v0, p5

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    .end local v11           #showMore:Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    .line 145
    .local v10, pictureDataByte:[B
    const/4 v2, 0x0

    .line 146
    .local v2, bm:Landroid/graphics/Bitmap;
    if-eqz p7, :cond_6

    .line 147
    const-string v15, "gal_search_show_more"

    move-object/from16 v0, p7

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 148
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    :goto_1
    return-void

    .line 102
    .end local v2           #bm:Landroid/graphics/Bitmap;
    .end local v10           #pictureDataByte:[B
    :cond_0
    move-object/from16 v7, p4

    .line 105
    .local v7, nameText:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 106
    const/4 v15, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, originNameBit:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#0881d3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v9, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, exchangedName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .end local v5           #exchangedName:Ljava/lang/String;
    .end local v9           #originNameBit:Ljava/lang/String;
    :goto_2
    move-object/from16 v1, p5

    .line 117
    .local v1, addrText:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 118
    const-string v15, "(Group)"

    if-eq v1, v15, :cond_3

    .line 119
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 120
    const/4 v15, 0x0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, originAddrBit:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<font color=#0881d3>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "</font>"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v8, v15}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, exchangedAddr:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "&#60;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&#62;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v4           #exchangedAddr:Ljava/lang/String;
    .end local v8           #originAddrBit:Ljava/lang/String;
    :goto_3
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 112
    .end local v1           #addrText:Ljava/lang/String;
    :cond_1
    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 130
    .restart local v1       #addrText:Ljava/lang/String;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ">"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 133
    :cond_3
    const-string v15, "<font color=#797979>(Group)</font>"

    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 137
    :cond_4
    const-string v15, ""

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 151
    .end local v1           #addrText:Ljava/lang/String;
    .end local v7           #nameText:Ljava/lang/String;
    .restart local v2       #bm:Landroid/graphics/Bitmap;
    .restart local v10       #pictureDataByte:[B
    :cond_5
    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p7

    invoke-static {v0, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    .line 152
    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v10, v15, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 154
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    const/4 v10, 0x0

    .line 159
    const/16 p7, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    goto/16 :goto_1

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v15, "EmailAddressAdapter:bindView"

    const-string v16, "Error"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    const/4 v10, 0x0

    .line 159
    const/16 p7, 0x0

    .line 160
    const/4 v2, 0x0

    .line 161
    goto/16 :goto_1

    .line 158
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    const/4 v10, 0x0

    .line 159
    const/16 p7, 0x0

    .line 160
    const/4 v2, 0x0

    throw v15

    .line 164
    :cond_6
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "view"
    .parameter "directoryType"
    .parameter "directoryName"

    .prologue
    .line 171
    const v2, 0x7f100142

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 172
    .local v1, text1:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/email/EmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080174

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .end local p2
    :goto_0
    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, text:Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    return-void

    .end local v0           #text:Ljava/lang/String;
    .restart local p2
    :cond_0
    move-object p2, p3

    .line 172
    goto :goto_0
.end method

.method protected inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_recipient_dropdown_item()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "parent"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/email/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getId_recipient_dropdown_item_loading()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 185
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 186
    .local v0, AccId:Ljava/lang/Long;
    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapterSec;->setAccount(Landroid/accounts/Account;Ljava/lang/Long;)V

    .line 188
    .end local v0           #AccId:Ljava/lang/Long;
    :cond_0
    return-void
.end method
