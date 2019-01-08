.class public Lcom/tikilive/ui/welcome/WelcomeFragment;
.super Landroid/support/v4/app/Fragment;
.source "WelcomeFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/welcome/WelcomeFragment$MainMenuItemOnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/Fragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COL_LOCATION_CITY_NAME:I = 0x2

.field private static final COL_LOCATION_COUNTRY_CODE:I = 0x3

.field private static final COL_WEATHER_CONDITION_ID:I = 0x1

.field private static final COL_WEATHER_MAX_TEMP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.welcome.WelcomeFragment"

.field private static final WEATHER_DETAIL_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/tikilive/ui/welcome/MainMenuAdapter;

.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mArrowLeft:Landroid/widget/FrameLayout;

.field private mArrowRight:Landroid/widget/FrameLayout;

.field private mCoverImage:Landroid/widget/ImageView;

.field private mGlide:Lcom/bumptech/glide/RequestManager;

.field private mHighTempView:Landroid/widget/TextView;

.field private mLocationView:Landroid/widget/TextView;

.field private mMainMenu:Landroid/support/v7/widget/RecyclerView;

.field private mMainMenuSnapHelper:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

.field private mPreviousMenuItem:Landroid/view/View;

.field private mRecommendation:Landroid/widget/LinearLayout;

.field private mRecommendationButton:Landroid/widget/LinearLayout;

.field private mRecommendationTextIcon:Landroid/widget/ImageView;

.field private mRecommendationTextLarge:Landroid/widget/TextView;

.field private mRecommendationTextSmall:Landroid/widget/TextView;

.field private mRecommendationsTimer:Ljava/util/Timer;

.field private mWeatherChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWeatherDelimiter:Landroid/view/View;

.field private mWeatherIcon:Landroid/widget/TextView;

.field private mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 110
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "max"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "weather_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "city_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "country_code"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/tikilive/ui/welcome/WelcomeFragment;->WEATHER_DETAIL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 104
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeFragment$1;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$1;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/tikilive/ui/welcome/WelcomeActivity;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->renderRecommendation(Lcom/tikilive/ui/model/Recommendation;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/tikilive/ui/welcome/WelcomeFragment;)Lcom/bumptech/glide/RequestManager;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mGlide:Lcom/bumptech/glide/RequestManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextSmall:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendation:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->ensureTimezone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/tikilive/ui/welcome/WelcomeFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/view/View;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mPreviousMenuItem:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/tikilive/ui/welcome/WelcomeFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mPreviousMenuItem:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mArrowLeft:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mArrowRight:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationButton:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/application/MyApplication;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->setupMainMenu(Lcom/tikilive/ui/application/MyApplication;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/tikilive/ui/welcome/WelcomeFragment;)Ljava/util/Timer;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationsTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationsTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextLarge:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/tikilive/ui/welcome/WelcomeFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method private ensureTimezone(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1038
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1042
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 1043
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1045
    invoke-virtual {v0, p1}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1047
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120130

    .line 1049
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f12012b

    const/4 v3, 0x2

    .line 1050
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f12012e

    .line 1051
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$37;

    invoke-direct {v2, p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$37;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Ljava/util/TimeZone;)V

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f12012c

    .line 1066
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeFragment$38;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$38;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f12012d

    .line 1072
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeFragment$39;

    invoke-direct {v0, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$39;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1079
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->requestFocus()Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private getWeatherIcon(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/16 v1, 0x1ff

    if-eq p1, v1, :cond_1

    const/16 v1, 0x213

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1106
    div-int/lit8 p1, p1, 0x64

    packed-switch p1, :pswitch_data_2

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const p1, 0x7f120279

    .line 1124
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const p1, 0x7f12027b

    .line 1121
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const p1, 0x7f120281

    .line 1118
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    const p1, 0x7f12027e

    .line 1115
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    const p1, 0x7f120282

    .line 1112
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const p1, 0x7f120284

    .line 1109
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    const p1, 0x7f12027a

    .line 1094
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    const p1, 0x7f120283

    .line 1090
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    :pswitch_9
    const p1, 0x7f120280

    .line 1103
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const p1, 0x7f12027f

    .line 1097
    invoke-virtual {p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x208
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_8
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initMainMenu()V
    .locals 3

    .line 308
    new-instance v0, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$3;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$3;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;-><init>(ZLcom/tikilive/ui/welcome/MainMenuSnapHelper$SnapListener;)V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenuSnapHelper:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    .line 314
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenuSnapHelper:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 316
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$4;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$4;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 340
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeFragment$5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/tikilive/ui/welcome/WelcomeFragment$5;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;II)V

    .line 386
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 389
    new-instance v1, Lcom/tikilive/ui/welcome/MainMenuAdapter;

    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-direct {v1, v2, v0}, Lcom/tikilive/ui/welcome/MainMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mAdapter:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    .line 390
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mAdapter:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 392
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    .line 393
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$6;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$6;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/application/MyApplication;->processSettings(Lcom/tikilive/ui/listener/OnApplicationSettingsRetrieved;)V

    return-void
.end method

.method private initRecommendations()V
    .locals 3

    .line 809
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mGlide:Lcom/bumptech/glide/RequestManager;

    .line 810
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationsTimer:Ljava/util/Timer;

    .line 812
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tikilive/ui/application/MyApplication;

    .line 814
    invoke-virtual {v0}, Lcom/tikilive/ui/application/MyApplication;->getRecommendations()Lcom/tikilive/ui/backend/Recommendations;

    move-result-object v1

    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$33;

    invoke-direct {v2, p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$33;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/application/MyApplication;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/backend/Recommendations;->refreshIfNeeded(Lcom/tikilive/ui/backend/Recommendations$RefreshedListener;)V

    return-void
.end method

.method private initWeather()V
    .locals 3

    .line 968
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/weather.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherIcon:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 971
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getCachedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 973
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getCachedLocationIp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 977
    invoke-static {v1}, Lcom/tikilive/ui/helper/Utils;->getIPAddress(Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 978
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Lcom/tikilive/ui/weather/WeatherSyncAdapter;->initializeSyncAdapter(Landroid/content/Context;)V

    goto :goto_2

    .line 979
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->updateWeatherLocation()V

    goto :goto_2

    .line 974
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->updateWeatherLocation()V

    .line 985
    :goto_2
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method

.method public static newInstance()Lcom/tikilive/ui/welcome/WelcomeFragment;
    .locals 1

    .line 126
    new-instance v0, Lcom/tikilive/ui/welcome/WelcomeFragment;

    invoke-direct {v0}, Lcom/tikilive/ui/welcome/WelcomeFragment;-><init>()V

    return-object v0
.end method

.method private renderRecommendation(Lcom/tikilive/ui/model/Recommendation;)V
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mGlide:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p1}, Lcom/tikilive/ui/model/Recommendation;->getCoverImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    const/16 v1, 0x1f4

    .line 856
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->crossFade(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mCoverImage:Landroid/widget/ImageView;

    .line 857
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 859
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendation:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendation:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 861
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendation:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 863
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 864
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 865
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$34;

    invoke-direct {v1, p0, p1}, Lcom/tikilive/ui/welcome/WelcomeFragment$34;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/model/Recommendation;)V

    .line 866
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 961
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private setupMainMenu(Lcom/tikilive/ui/application/MyApplication;)V
    .locals 5

    .line 404
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$7;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$7;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-virtual {p1}, Lcom/tikilive/ui/application/MyApplication;->getMainMenuItems()Ljava/util/List;

    move-result-object p1

    .line 435
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 438
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {p1}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f120240

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_account"

    .line 440
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 441
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$8;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$8;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_1
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f12023f

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_login"

    .line 451
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 452
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$9;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$9;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :goto_0
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f12023a

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_guide"

    .line 464
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 465
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$10;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$10;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f120242

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_ondemand"

    .line 477
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 478
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$11;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$11;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f12023e

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_channels"

    .line 488
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 489
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$12;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$12;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance p1, Lcom/tikilive/ui/welcome/MainMenuItem;

    const v1, 0x7f120235

    invoke-virtual {p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;-><init>(Ljava/lang/String;)V

    const-string v1, "main_menu_speedtest"

    .line 536
    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setIcon(Ljava/lang/String;)V

    .line 537
    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$15;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$15;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {p1, v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 567
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tikilive/ui/welcome/MainMenuItem;

    .line 568
    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->getTarget()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "video_library_category"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x7

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "video_library_player"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "settings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xe

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "channels"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "channel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "speed_test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xc

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "radio"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_7
    const-string v4, "login"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_8
    const-string v4, "guide"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_9
    const-string v4, "apps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xd

    goto :goto_2

    :sswitch_a
    const-string v4, "dvr"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xb

    goto :goto_2

    :sswitch_b
    const-string v4, "video_library_network"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_c
    const-string v4, "account"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_d
    const-string v4, "video_library_networks"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_e
    const-string v4, "app_launcher"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0xf

    goto :goto_2

    :sswitch_f
    const-string v4, "video_library"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x6

    :cond_4
    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 773
    :pswitch_1
    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->isAndroidGooglePlay()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 776
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$32;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$32;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 774
    :cond_5
    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->isAndroidSTB()Z

    .line 775
    invoke-virtual {v1}, Lcom/tikilive/ui/welcome/MainMenuItem;->isAndroidAmazon()Z

    move-result v1

    goto/16 :goto_1

    .line 731
    :pswitch_2
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$29;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$29;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 698
    :pswitch_3
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$27;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$27;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 688
    :pswitch_4
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$26;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$26;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 677
    :pswitch_5
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$25;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$25;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 685
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 666
    :pswitch_6
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$24;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$24;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 656
    :pswitch_7
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$23;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$23;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 624
    :pswitch_8
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$21;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$21;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 609
    :pswitch_9
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$20;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$20;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 594
    :pswitch_a
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$19;

    invoke-direct {v2, p0, v1}, Lcom/tikilive/ui/welcome/WelcomeFragment$19;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Lcom/tikilive/ui/welcome/MainMenuItem;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 606
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 582
    :pswitch_b
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v2}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 583
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$18;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$18;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 570
    :pswitch_c
    iget-object v2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    invoke-virtual {v2}, Lcom/tikilive/ui/backend/Api;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 571
    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$17;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$17;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/tikilive/ui/welcome/MainMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 802
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mAdapter:Lcom/tikilive/ui/welcome/MainMenuAdapter;

    invoke-virtual {p1, v0}, Lcom/tikilive/ui/welcome/MainMenuAdapter;->setItems(Ljava/util/List;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7d4acb09 -> :sswitch_f
        -0x5ffc6402 -> :sswitch_e
        -0x558f71b3 -> :sswitch_d
        -0x462c75d3 -> :sswitch_c
        -0x1346b11a -> :sswitch_b
        0x18620 -> :sswitch_a
        0x2dca72 -> :sswitch_9
        0x5e23afc -> :sswitch_8
        0x625ef69 -> :sswitch_7
        0x67413fb -> :sswitch_6
        0x25b0118a -> :sswitch_5
        0x2c0b7d03 -> :sswitch_4
        0x556423d0 -> :sswitch_3
        0x5582bc23 -> :sswitch_2
        0x55b92f29 -> :sswitch_1
        0x5f295f46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateWeatherLocation()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    new-instance v1, Lcom/tikilive/ui/welcome/WelcomeFragment$35;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$35;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    new-instance v2, Lcom/tikilive/ui/welcome/WelcomeFragment$36;

    invoke-direct {v2, p0}, Lcom/tikilive/ui/welcome/WelcomeFragment$36;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/tikilive/ui/backend/Api;->getLocation(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 132
    instance-of v0, p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    if-eqz v0, :cond_0

    .line 133
    check-cast p1, Lcom/tikilive/ui/welcome/WelcomeActivity;

    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be an instance of WelcomeActivity"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {p1}, Lcom/tikilive/ui/helper/Utils;->getCachedLocation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance p2, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/tikilive/ui/weather/WeatherContract$WeatherEntry;->buildWeatherLocationWithDate(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/tikilive/ui/welcome/WelcomeFragment;->WEATHER_DETAIL_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    .line 246
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 266
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherIcon:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mHighTempView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherDelimiter:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/tikilive/ui/welcome/WelcomeFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationsTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationsTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mCoverImage:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->clear(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 213
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.tikilive.ui.service.WEATHER_SYNCED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 202
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 204
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWelcomeActivity:Lcom/tikilive/ui/welcome/WelcomeActivity;

    invoke-virtual {v0}, Lcom/tikilive/ui/welcome/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 206
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->initMainMenu()V

    .line 207
    invoke-direct {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->initRecommendations()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 239
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenuSnapHelper:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenuSnapHelper:Lcom/tikilive/ui/welcome/MainMenuSnapHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tikilive/ui/welcome/MainMenuSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    new-instance p2, Lcom/tikilive/ui/welcome/WelcomeFragment$2;

    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/tikilive/ui/welcome/WelcomeFragment$2;-><init>(Lcom/tikilive/ui/welcome/WelcomeFragment;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p2, 0x7f0a009f

    .line 176
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mCoverImage:Landroid/widget/ImageView;

    const p2, 0x7f0a0039

    .line 177
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mArrowLeft:Landroid/widget/FrameLayout;

    const p2, 0x7f0a003a

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mArrowRight:Landroid/widget/FrameLayout;

    const p2, 0x7f0a01aa

    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    .line 180
    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 181
    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->setSaveEnabled(Z)V

    .line 182
    iget-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mMainMenu:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;

    .line 183
    invoke-virtual {p0}, Lcom/tikilive/ui/welcome/WelcomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/tikilive/ui/welcome/MainMenuItemDecoration;-><init>(I)V

    .line 182
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f0a0245

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendation:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0248

    .line 188
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextLarge:Landroid/widget/TextView;

    const p2, 0x7f0a0249

    .line 189
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextSmall:Landroid/widget/TextView;

    const p2, 0x7f0a0247

    .line 190
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationTextIcon:Landroid/widget/ImageView;

    const p2, 0x7f0a0246

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mRecommendationButton:Landroid/widget/LinearLayout;

    const p2, 0x7f0a036b

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherIcon:Landroid/widget/TextView;

    const p2, 0x7f0a036a

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mHighTempView:Landroid/widget/TextView;

    const p2, 0x7f0a0369

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mWeatherDelimiter:Landroid/view/View;

    const p2, 0x7f0a036c

    .line 197
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/tikilive/ui/welcome/WelcomeFragment;->mLocationView:Landroid/widget/TextView;

    return-void
.end method
