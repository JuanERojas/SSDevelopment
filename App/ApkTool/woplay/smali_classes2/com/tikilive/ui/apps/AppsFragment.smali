.class public Lcom/tikilive/ui/apps/AppsFragment;
.super Landroid/support/v4/app/Fragment;
.source "AppsFragment.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstalledAppsCounter:Landroid/widget/TextView;

.field private mInstalledAppsTitle:Landroid/widget/TextView;

.field private mNoAppsInfo:Landroid/widget/TextView;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tikilive/ui/apps/AppsFragment;->mInstalledAppsCounter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tikilive/ui/apps/AppsFragment;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/tikilive/ui/apps/AppsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static newInstance()Lcom/tikilive/ui/apps/AppsFragment;
    .locals 1

    .line 39
    new-instance v0, Lcom/tikilive/ui/apps/AppsFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/apps/AppsFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d004c

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0251

    .line 63
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const p2, 0x7f0a0161

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mInstalledAppsCounter:Landroid/widget/TextView;

    const p2, 0x7f0a01e7

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mNoAppsInfo:Landroid/widget/TextView;

    const p2, 0x7f0a0162

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment;->mInstalledAppsTitle:Landroid/widget/TextView;

    .line 68
    new-instance p1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 69
    iget-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 70
    iget-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Lcom/tikilive/ui/apps/AppsSpaceItemDecoration;

    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p2, v0}, Lcom/tikilive/ui/apps/AppsSpaceItemDecoration;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 71
    iget-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 73
    new-instance p1, Lcom/tikilive/ui/apps/AppsAdapter;

    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tikilive/ui/apps/AppsAdapter;-><init>(Landroid/app/Activity;)V

    .line 75
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 77
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 79
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 82
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x80

    .line 86
    :try_start_0
    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 91
    :cond_1
    new-instance v3, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v3, v0}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v4, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 93
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    invoke-virtual {p0}, Lcom/tikilive/ui/apps/AppsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f100009

    invoke-virtual {v3, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p2, v2

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 96
    new-instance v2, Lcom/tikilive/ui/apps/AppsFragment$1;

    invoke-direct {v2, p0, p2, v1}, Lcom/tikilive/ui/apps/AppsFragment$1;-><init>(Lcom/tikilive/ui/apps/AppsFragment;Ljava/lang/String;I)V

    .line 109
    new-instance v1, Lcom/tikilive/ui/apps/AppsFragment$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/tikilive/ui/apps/AppsFragment$2;-><init>(Lcom/tikilive/ui/apps/AppsFragment;Lcom/tikilive/ui/apps/AppsAdapter;Landroid/content/pm/PackageManager;)V

    .line 125
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 126
    new-instance v5, Lcom/tikilive/ui/model/App;

    invoke-direct {v5}, Lcom/tikilive/ui/model/App;-><init>()V

    .line 127
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/App;->setLabel(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/tikilive/ui/model/App;->setName(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/tikilive/ui/model/App;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 130
    invoke-virtual {p1, v5, v2, v1}, Lcom/tikilive/ui/apps/AppsAdapter;->addItem(Lcom/tikilive/ui/model/App;Landroid/view/View$OnFocusChangeListener;Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/tikilive/ui/apps/AppsFragment;->mInstalledAppsCounter:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 134
    :cond_3
    iget-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mInstalledAppsTitle:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mNoAppsInfo:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_3
    iget-object p2, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    iget-object p1, p0, Lcom/tikilive/ui/apps/AppsFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/tikilive/ui/apps/AppsFragment$3;

    invoke-direct {p2, p0}, Lcom/tikilive/ui/apps/AppsFragment$3;-><init>(Lcom/tikilive/ui/apps/AppsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
