.class public Lcom/tikilive/ui/helper/History;
.super Ljava/lang/Object;
.source "History.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/helper/History$HistoryType;
    }
.end annotation


# static fields
.field public static final HISTORY_PREFERENCES_CHANNEL_ID:Ljava/lang/String; = "history_channel_id"

.field public static final HISTORY_PREFERENCES_DVR_SELECTED_ITEM_ID:Ljava/lang/String; = "history_dvr_selected_item_id"

.field public static final HISTORY_PREFERENCES_DVR_SELECTED_TAB:Ljava/lang/String; = "history_dvr_selected_tab"

.field public static final HISTORY_PREFERENCES_FILE:Ljava/lang/String; = "HistoryPreferences"

.field public static final HISTORY_PREFERENCES_TYPE:Ljava/lang/String; = "history_type"

.field public static final HISTORY_PREFERENCES_VIDEO_LIBRARY_CATEGORY_ID:Ljava/lang/String; = "history_video_library_category_id"

.field public static final HISTORY_PREFERENCES_VIDEO_LIBRARY_SEARCH_QUERY:Ljava/lang/String; = "history_video_library_search_query"

.field public static final HISTORY_PREFERENCES_VIDEO_LIBRARY_VIDEO_ID:Ljava/lang/String; = "history_video_library_video_id"

.field public static final HISTORY_TYPE_CHANNEL_GUIDE:I = 0x101

.field public static final HISTORY_TYPE_CHANNEL_LIST:I = 0x102

.field public static final HISTORY_TYPE_CHANNEL_PLAYER:I = 0x103

.field public static final HISTORY_TYPE_DVR:I = 0x104

.field public static final HISTORY_TYPE_DVR_ITEM_DETAILS:I = 0x105

.field public static final HISTORY_TYPE_DVR_ITEM_PLAYER:I = 0x106

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_LATEST_EPISODES:I = 0x112

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_NETWORKS:I = 0x109

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_POPULAR_CONTENT:I = 0x111

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_SPECIFIC_CATEGORY:I = 0x108

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_SPECIFIC_NETWORK:I = 0x110

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_TOP_LEVEL_CATEGORIES:I = 0x107

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_ALL_EPISODES:I = 0x115

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_ALL_VIDEOS:I = 0x114

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_LATEST_EPISODES:I = 0x119

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_POPULAR_EPISODES:I = 0x118

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_POPULAR_TAB_EPISODES:I = 0x117

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_POPULAR_TAB_VIDEOS:I = 0x116

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_DETAILS_SEARCH_RESULTS:I = 0x120

.field public static final HISTORY_TYPE_VIDEO_LIBRARY_VIDEO_PLAYER:I = 0x121

.field private static mInstance:Lcom/tikilive/ui/helper/History;


# instance fields
.field private hasExecuted:Z

.field private mContext:Landroid/content/Context;

.field private mSettings:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/tikilive/ui/helper/History;->hasExecuted:Z

    .line 90
    iput-object p1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/tikilive/ui/helper/History;
    .locals 2

    const-class v0, Lcom/tikilive/ui/helper/History;

    monitor-enter v0

    .line 94
    :try_start_0
    sget-object v1, Lcom/tikilive/ui/helper/History;->mInstance:Lcom/tikilive/ui/helper/History;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/tikilive/ui/helper/History;

    invoke-direct {v1, p0}, Lcom/tikilive/ui/helper/History;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/tikilive/ui/helper/History;->mInstance:Lcom/tikilive/ui/helper/History;

    .line 97
    :cond_0
    sget-object p0, Lcom/tikilive/ui/helper/History;->mInstance:Lcom/tikilive/ui/helper/History;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    monitor-exit v0

    throw p0
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/tikilive/ui/helper/History;->mSettings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-string v1, "HistoryPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/helper/History;->mSettings:Landroid/content/SharedPreferences;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/helper/History;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private getPreferencesEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 406
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearHistory()V
    .locals 2

    .line 249
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    .line 250
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getHistoryChannelId()I
    .locals 3

    .line 125
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "history_channel_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public redirectHistory()Z
    .locals 6

    .line 255
    iget-boolean v0, p0, Lcom/tikilive/ui/helper/History;->hasExecuted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/tikilive/ui/helper/History;->hasExecuted:Z

    .line 260
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_type"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    return v1

    .line 362
    :pswitch_0
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 363
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/video/VideoPlaybackActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "video_id"

    .line 364
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 354
    :pswitch_1
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 355
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_search_query"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v5, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "video_id"

    .line 357
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "search_query"

    .line 358
    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 347
    :pswitch_2
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 348
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "video_id"

    .line 349
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "latest_episodes"

    .line 350
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 340
    :pswitch_3
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 341
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "video_id"

    .line 342
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "popular_episodes"

    .line 343
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 344
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 331
    :pswitch_4
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 332
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "history_video_library_category_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 333
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v5, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "video_id"

    .line 334
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "network_id"

    .line 335
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "popular_tab"

    .line 336
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 322
    :pswitch_5
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 323
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "history_video_library_category_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 324
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v5, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "video_id"

    .line 325
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "category_id"

    .line 326
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "popular_tab"

    .line 327
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 314
    :pswitch_6
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 315
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "history_video_library_category_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 316
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v5, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "video_id"

    .line 317
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "network_id"

    .line 318
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 306
    :pswitch_7
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_video_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 307
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "history_video_library_category_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 308
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v5, Lcom/tikilive/ui/video/VideoDetailsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "video_id"

    .line 309
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "category_id"

    .line 310
    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 311
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 302
    :pswitch_8
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/video/LatestEpisodesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 298
    :pswitch_9
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/video/PopularContentActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 299
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 292
    :pswitch_a
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_category_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 293
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "category_id"

    .line 294
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 288
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/video/NetworksActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 282
    :pswitch_c
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_video_library_category_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 283
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/video/CategoryListingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "category_id"

    .line 284
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 285
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 278
    :pswitch_d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/video/TopLevelCategoriesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 387
    :pswitch_e
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_dvr_selected_item_id"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 388
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/dvr/DvrPlaybackActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "dvr_item_id"

    .line 389
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 374
    :pswitch_f
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v4, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "history_dvr_selected_item_id"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const-string v3, "selected_dvr_item_id"

    .line 377
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 378
    iget-object v1, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_dvr_selected_tab"

    sget-object v4, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v4}, Lcom/tikilive/ui/model/DvrStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tikilive/ui/model/DvrStatus;->valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    const-string v3, "selected_tab"

    .line 382
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 383
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v0

    .line 368
    :pswitch_10
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/dvr/DvrLibraryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "history_dvr_selected_tab"

    sget-object v4, Lcom/tikilive/ui/model/DvrStatus;->READY:Lcom/tikilive/ui/model/DvrStatus;

    invoke-virtual {v4}, Lcom/tikilive/ui/model/DvrStatus;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tikilive/ui/model/DvrStatus;->valueOf(Ljava/lang/String;)Lcom/tikilive/ui/model/DvrStatus;

    move-result-object v2

    const-string v3, "selected_tab"

    .line 370
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 273
    :pswitch_11
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "INITIAL_FRAGMENT"

    const/16 v3, 0x103

    .line 274
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 268
    :pswitch_12
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "INITIAL_FRAGMENT"

    const/16 v3, 0x101

    .line 269
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    .line 263
    :pswitch_13
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tikilive/ui/channel/ChannelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "INITIAL_FRAGMENT"

    const/16 v3, 0x102

    .line 264
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    iget-object v2, p0, Lcom/tikilive/ui/helper/History;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x110
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x114
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x120
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHistoryChannelGuide()V
    .locals 3

    .line 101
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x101

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryChannelId(I)V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_channel_id"

    .line 120
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryChannelList()V
    .locals 3

    .line 107
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x102

    .line 108
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryChannelPlayer()V
    .locals 3

    .line 113
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x103

    .line 114
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryDvrLibrary(Ljava/lang/String;)V
    .locals 3

    .line 228
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x104

    .line 229
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_dvr_selected_tab"

    .line 230
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryDvrLibraryItemDetails(I)V
    .locals 3

    .line 235
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x105

    .line 236
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_dvr_selected_item_id"

    .line 237
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryDvrLibraryPlayer(I)V
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x106

    .line 243
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_dvr_selected_item_id"

    .line 244
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryLatestEpisodes()V
    .locals 3

    .line 161
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x112

    .line 162
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryNetworks()V
    .locals 3

    .line 142
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x109

    .line 143
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryPlayer(I)V
    .locals 3

    .line 221
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x121

    .line 222
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 223
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryPopularContent()V
    .locals 3

    .line 155
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x111

    .line 156
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibrarySpecificCategory(I)V
    .locals 3

    .line 135
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x108

    .line 136
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_category_id"

    .line 137
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibrarySpecificNetwork(I)V
    .locals 3

    .line 148
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x110

    .line 149
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_category_id"

    .line 150
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryTopLevelCategories()V
    .locals 3

    .line 129
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x107

    .line 130
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsAllEpisodes(II)V
    .locals 3

    .line 175
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x115

    .line 176
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 177
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "history_video_library_category_id"

    .line 178
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsAllVideos(II)V
    .locals 3

    .line 167
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x114

    .line 168
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 169
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "history_video_library_category_id"

    .line 170
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsLatestEpisodes(I)V
    .locals 3

    .line 206
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x119

    .line 207
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 208
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsPopularEpisodes(I)V
    .locals 3

    .line 199
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x118

    .line 200
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 201
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsPopularTabEpisodes(II)V
    .locals 3

    .line 191
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x117

    .line 192
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 193
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "history_video_library_category_id"

    .line 194
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 195
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsPopularTabVideos(II)V
    .locals 3

    .line 183
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x116

    .line 184
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 185
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "history_video_library_category_id"

    .line 186
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setHistoryVideoLibraryVideoDetailsSearchResults(ILjava/lang/String;)V
    .locals 3

    .line 213
    invoke-direct {p0}, Lcom/tikilive/ui/helper/History;->getPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "history_type"

    const/16 v2, 0x120

    .line 214
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "history_video_library_video_id"

    .line 215
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p1, "history_video_library_search_query"

    .line 216
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
