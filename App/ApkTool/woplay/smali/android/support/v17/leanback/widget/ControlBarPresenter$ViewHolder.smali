.class Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ControlBarPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

.field mControlsContainer:Landroid/view/View;

.field mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

.field mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mPresenter:Landroid/support/v17/leanback/widget/Presenter;

.field mViewHolders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v17/leanback/widget/Presenter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V
    .locals 1

    .line 78
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    .line 79
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 71
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    .line 80
    sget v0, Landroid/support/v17/leanback/R$id;->controls_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    .line 81
    sget v0, Landroid/support/v17/leanback/R$id;->control_bar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v17/leanback/widget/ControlBar;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 82
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    if-nez p2, :cond_0

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Couldn\'t find control_bar"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_0
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/ControlBar;->setDefaultFocusToMiddle(Z)V

    .line 86
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;Landroid/support/v17/leanback/widget/ControlBarPresenter;)V

    invoke-virtual {p2, v0}, Landroid/support/v17/leanback/widget/ControlBar;->setOnChildFocusedListener(Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;)V

    .line 102
    new-instance p2, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;

    invoke-direct {p2, p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;Landroid/support/v17/leanback/widget/ControlBarPresenter;)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    return-void
.end method

.method private bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 152
    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {p3, v0}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    .line 155
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mViewHolders:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    new-instance v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;

    invoke-direct {v1, p0, p1, v0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;ILandroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    invoke-virtual {p3, v0, v1}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_0
    iget-object p1, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_1

    .line 170
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ControlBar;->addView(Landroid/view/View;)V

    .line 172
    :cond_1
    invoke-virtual {p3, v0, p2}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 1

    .line 122
    iget-object p2, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {p2, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/ControlBarPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method showControls(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 5

    .line 126
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    .line 129
    :goto_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ControlBar;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    .line 130
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 131
    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 132
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 134
    :cond_1
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_2

    .line 135
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/ControlBar;->removeViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v2, :cond_3

    const/4 v3, 0x7

    if-ge v1, v3, :cond_3

    .line 139
    invoke-direct {p0, v1, v0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/Presenter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    :cond_3
    iget-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    .line 142
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ControlBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->getChildMarginFromCenter(Landroid/content/Context;I)I

    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/ControlBar;->setChildMarginFromCenter(I)V

    return-void
.end method
