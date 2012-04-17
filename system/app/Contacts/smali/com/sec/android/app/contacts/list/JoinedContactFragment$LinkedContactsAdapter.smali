.class final Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "JoinedContactFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/JoinedContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedContactsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mUnknownAccountText:Ljava/lang/CharSequence;

.field mUnknownNameText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    .line 233
    const v0, 0x7f040093

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 235
    const v0, 0x104000e

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 236
    const v0, 0x104000f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownAccountText:Ljava/lang/CharSequence;

    .line 237
    iput-object p2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    .line 238
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    .line 276
    .local v1, cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 279
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v0, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v7

    .line 280
    .local v7, type:Lcom/android/contacts/model/AccountType;
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .end local v7           #type:Lcom/android/contacts/model/AccountType;
    :goto_0
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 290
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    :goto_1
    const/4 v8, 0x0

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 297
    .local v5, rawContactId:J
    const/4 v4, 0x0

    .line 299
    .local v4, photo:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v5, v6, v9}, Lcom/android/contacts/ContactsUtils;->loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 307
    :goto_2
    if-nez v4, :cond_2

    .line 308
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    const v9, 0x7f020109

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 313
    :goto_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 314
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 315
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 316
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 323
    :goto_4
    iput-wide v5, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->targetRawContactId:J

    .line 324
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    iget-wide v9, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->targetRawContactId:J

    invoke-static {v8, v9, v10}, Lcom/android/contacts/ContactsUtils;->loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v8

    iput-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->profileIntent:Landroid/content/Intent;

    .line 326
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;

    invoke-direct {v9, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$1;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;

    invoke-direct {v9, p0, v1}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$2;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;)V

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    if-nez v8, :cond_4

    .line 342
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->topDiveder:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :goto_5
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 347
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->divider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :goto_6
    return-void

    .line 282
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #photo:Landroid/graphics/Bitmap;
    .end local v5           #rawContactId:J
    :cond_0
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownAccountText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 292
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 302
    .restart local v4       #photo:Landroid/graphics/Bitmap;
    .restart local v5       #rawContactId:J
    :catch_0
    move-exception v2

    .line 304
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    .line 310
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :cond_2
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 318
    :cond_3
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 319
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 320
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_4

    .line 344
    :cond_4
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->topDiveder:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 349
    :cond_5
    iget-object v8, v1, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->divider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mCursor:Landroid/database/Cursor;

    .line 375
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_0
    if-nez p2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, v:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 385
    return-object v1

    .line 382
    .end local v1           #v:Landroid/view/View;
    :cond_1
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 354
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 356
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;-><init>(Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;)V

    .line 357
    .local v0, cache:Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;
    const v2, 0x7f0d01ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->mJoinedContactItem:Landroid/widget/LinearLayout;

    .line 358
    const v2, 0x7f0d0170

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->accountView:Landroid/widget/TextView;

    .line 359
    const v2, 0x7f0d0095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->nameView:Landroid/widget/TextView;

    .line 360
    const v2, 0x7f0d01ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->photoView:Landroid/widget/ImageView;

    .line 363
    const v2, 0x7f0d01b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonFrame:Landroid/widget/FrameLayout;

    .line 364
    const v2, 0x7f0d01b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->minusButtonView:Landroid/widget/ImageView;

    .line 365
    const v2, 0x7f0d0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->divider:Landroid/view/View;

    .line 366
    const v2, 0x7f0d01ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter$LinkedContactItemCache;->topDiveder:Landroid/view/View;

    .line 367
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 368
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 390
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->this$0:Lcom/sec/android/app/contacts/list/JoinedContactFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/list/JoinedContactFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getTextFilter()Ljava/lang/CharSequence;

    move-result-object v0

    .line 391
    .local v0, constraint:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/JoinedContactFragment$LinkedContactsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    .line 394
    .local v1, filter:Landroid/widget/Filter;
    invoke-virtual {v1, v0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 399
    .end local v1           #filter:Landroid/widget/Filter;
    :cond_0
    return-void
.end method
