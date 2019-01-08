.class Landroid/support/v17/leanback/widget/ControlBarPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "ControlBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;,
        Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;
    }
.end annotation


# static fields
.field static final MAX_CONTROLS:I = 0x7

.field private static sChildMarginDefault:I

.field private static sControlIconWidth:I


# instance fields
.field mDefaultFocusToMiddle:Z

.field private mLayoutResourceId:I

.field mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

.field mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 196
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    .line 197
    iput p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    return-void
.end method


# virtual methods
.method getChildMarginDefault(Landroid/content/Context;)I
    .locals 1

    .line 272
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    .line 276
    :cond_0
    sget p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sChildMarginDefault:I

    return p1
.end method

.method getControlIconWidth(Landroid/content/Context;)I
    .locals 1

    .line 280
    sget v0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    if-nez v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v17/leanback/R$dimen;->lb_control_icon_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    .line 284
    :cond_0
    sget p1, Landroid/support/v17/leanback/widget/ControlBarPresenter;->sControlIconWidth:I

    return p1
.end method

.method public getLayoutResourceId()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mLayoutResourceId:I

    return v0
.end method

.method public getOnItemControlListener()Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    return-object v0
.end method

.method public getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;
    .locals 1

    .line 218
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 248
    check-cast p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 249
    check-cast p2, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 250
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p2, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v0, p2, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->adapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 252
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 256
    :cond_0
    iget-object v0, p2, Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;->presenter:Landroid/support/v17/leanback/widget/Presenter;

    iput-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    .line 257
    iput-object p2, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    .line 258
    iget-object p2, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3

    .line 241
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 243
    new-instance v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V

    return-object v0
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3

    .line 263
    check-cast p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    .line 264
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 266
    iput-object v1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 268
    :cond_0
    iput-object v1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mData:Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;

    return-void
.end method

.method public setBackgroundColor(Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;I)V
    .locals 0

    .line 236
    iget-object p1, p1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->mControlsContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method setDefaultFocusToMiddle(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mDefaultFocusToMiddle:Z

    return-void
.end method

.method public setOnControlClickedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlClickedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;

    return-void
.end method

.method public setOnControlSelectedListener(Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ControlBarPresenter;->mOnControlSelectedListener:Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;

    return-void
.end method
