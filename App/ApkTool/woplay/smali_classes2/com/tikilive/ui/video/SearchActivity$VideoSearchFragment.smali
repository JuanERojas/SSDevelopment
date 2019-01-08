.class public Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;
.super Landroid/support/v4/app/Fragment;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tikilive/ui/video/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoSearchFragment"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.video.SearchActivity$VideoSearchFragment"


# instance fields
.field private mAdapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

.field private mNoSearchResults:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;

.field private mSearchButton:Landroid/widget/Button;

.field private mSearchLoading:Landroid/widget/ProgressBar;

.field private mSearchQueryInput:Landroid/widget/EditText;

.field private mSearchResultsCounter:Landroid/widget/TextView;

.field private mSearchResultsHeader:Landroid/widget/LinearLayout;

.field private mVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tikilive/ui/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/widget/EditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->performSearch()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Lcom/tikilive/ui/video/VideoLibraryAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mAdapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->populateSearchResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Lcom/tikilive/ui/video/SearchActivity;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 65
    sget-object v0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/widget/TextView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;
    .locals 1

    .line 85
    new-instance v0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;-><init>()V

    return-object v0
.end method

.method private performSearch()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 182
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    const-string v1, "Search query cannot be empty"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchLoading:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v1

    .line 193
    :try_start_0
    new-instance v2, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$4;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Ljava/lang/String;)V

    new-instance v3, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$5;

    invoke-direct {v3, p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$5;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/tikilive/ui/backend/Api;->searchVideos(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;

    invoke-virtual {v2, v0, v1}, Lcom/tikilive/ui/video/SearchActivity;->showErrorFragment(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private populateSearchResults(Ljava/lang/String;)V
    .locals 8

    .line 246
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 249
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f10000e

    iget-object v4, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v3, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$6;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Ljava/lang/String;)V

    .line 262
    iget-object v4, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mVideos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tikilive/ui/model/Video;

    .line 263
    new-instance v6, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;

    invoke-direct {v6, p0, v5, p1}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$7;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;Lcom/tikilive/ui/model/Video;Ljava/lang/String;)V

    .line 273
    iget-object v7, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mAdapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {v7, v5, v3, v6}, Lcom/tikilive/ui/video/VideoLibraryAdapter;->addVideo(Lcom/tikilive/ui/model/Video;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsCounter:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mNoSearchResults:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$8;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 289
    :cond_1
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsHeader:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mNoSearchResults:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/SearchActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 97
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of SearchActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 103
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 105
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/tikilive/ui/video/SearchActivity;

    iput-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 107
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be a subclass of SearchActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d005d

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0255

    .line 122
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 123
    new-instance p2, Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p2, p3}, Lcom/tikilive/ui/video/VideoLibraryAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mAdapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    .line 125
    new-instance p2, Lcom/tikilive/ui/video/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x4

    invoke-direct {p2, p3, v0}, Lcom/tikilive/ui/video/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 126
    iget-object p3, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 127
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p3, Lcom/tikilive/ui/video/SpaceItemDecoration;

    .line 128
    invoke-virtual {p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p3, v0}, Lcom/tikilive/ui/video/SpaceItemDecoration;-><init>(I)V

    .line 127
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 130
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 131
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p3, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mAdapter:Lcom/tikilive/ui/video/VideoLibraryAdapter;

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const p2, 0x7f0a019b

    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchLoading:Landroid/widget/ProgressBar;

    const p2, 0x7f0a0272

    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    .line 135
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    new-instance p3, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$1;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 148
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchQueryInput:Landroid/widget/EditText;

    new-instance p3, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$2;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f0a026e

    .line 164
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchButton:Landroid/widget/Button;

    .line 165
    iget-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchButton:Landroid/widget/Button;

    new-instance p3, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$3;

    invoke-direct {p3, p0}, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment$3;-><init>(Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0278

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsHeader:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0277

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchResultsCounter:Landroid/widget/TextView;

    const p2, 0x7f0a01e8

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mNoSearchResults:Landroid/widget/TextView;

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/tikilive/ui/video/SearchActivity$VideoSearchFragment;->mSearchActivity:Lcom/tikilive/ui/video/SearchActivity;

    return-void
.end method
