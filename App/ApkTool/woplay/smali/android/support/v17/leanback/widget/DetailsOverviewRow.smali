.class public Landroid/support/v17/leanback/widget/DetailsOverviewRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "DetailsOverviewRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    }
.end annotation


# instance fields
.field private mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageScaleUpAllowed:Z

.field private mItem:Ljava/lang/Object;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 75
    new-instance v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 76
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 85
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->verify()V

    return-void
.end method

.method private getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method private verify()V
    .locals 2

    .line 354
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAction(ILandroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addAction(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method final addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 2

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 97
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_1

    .line 99
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionForKeyCode(I)Landroid/support/v17/leanback/widget/Action;
    .locals 4

    .line 341
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 343
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Action;

    .line 345
    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/Action;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->unmodifiableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isImageScaleUpAllowed()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    return v0
.end method

.method final notifyActionsAdapterChanged()V
    .locals 2

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onActionsAdapterChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final notifyImageDrawableChanged()V
    .locals 2

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onImageDrawableChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final notifyItemChanged()V
    .locals 2

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 139
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onItemChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAction(Landroid/support/v17/leanback/widget/Action;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 2

    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 117
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    .line 119
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-ne v1, p1, :cond_1

    .line 122
    iget-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_1

    .line 329
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 330
    iget-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object p1

    if-nez p1, :cond_0

    .line 331
    iget-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyActionsAdapterChanged()V

    :cond_1
    return-void
.end method

.method public final setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 221
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 208
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public setImageScaleUpAllowed(Z)V
    .locals 1

    .line 241
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    if-eq p1, v0, :cond_0

    .line 242
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 195
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyItemChanged()V

    :cond_0
    return-void
.end method
