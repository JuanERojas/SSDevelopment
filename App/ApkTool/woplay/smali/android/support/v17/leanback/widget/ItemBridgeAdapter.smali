.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProviderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ItemBridgeAdapter"


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/PresenterSelector;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    .line 158
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 191
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 192
    iput-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    return-void
.end method

.method public getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v17/leanback/widget/FacetProvider;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 440
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 283
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 284
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 285
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object p1

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 291
    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    .line 292
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    :cond_1
    return v0
.end method

.method public getPresenterMapper()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWrapper()Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-object v0
.end method

.method protected onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method protected onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 381
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    .line 384
    iget-object p2, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 386
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 387
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz p2, :cond_0

    .line 388
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 2

    .line 396
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 397
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    .line 399
    iget-object p2, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1, p3}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 401
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 402
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz p2, :cond_0

    .line 403
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {p2, p1, p3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 343
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/Presenter;

    .line 346
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->createWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 348
    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    .line 349
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->wrap(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    .line 352
    iget-object v0, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 354
    :goto_0
    new-instance v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {v1, p0, p2, v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Landroid/support/v17/leanback/widget/Presenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 355
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 356
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz p1, :cond_1

    .line 357
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 359
    :cond_1
    iget-object p1, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 361
    iget-object p2, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v2

    iput-object v2, p2, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    .line 363
    iget-object p2, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 365
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    if-eqz p1, :cond_3

    .line 366
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    invoke-interface {p1, v0}, Landroid/support/v17/leanback/widget/FocusHighlightHandler;->onInitializeView(Landroid/view/View;)V

    :cond_3
    return-object v1
.end method

.method protected onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method protected onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 420
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 421
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 422
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 425
    :cond_0
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object p1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 430
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 431
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 432
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 433
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 409
    check-cast p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 410
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 411
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 412
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    :cond_0
    const/4 v0, 0x0

    .line 415
    iput-object v0, p1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    .line 206
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne p1, v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 212
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 213
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez p1, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void

    .line 218
    :cond_2
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 219
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->hasStableIds()Z

    move-result p1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 220
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setHasStableIds(Z)V

    .line 222
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0

    .line 375
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    return-void
.end method

.method setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V
    .locals 0

    .line 250
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    return-void
.end method

.method public setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0

    .line 231
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 232
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPresenterMapper(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;)V"
        }
    .end annotation

    .line 265
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-void
.end method

.method public setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V
    .locals 0

    .line 239
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-void
.end method
