.class public Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;
.super Ljava/lang/Object;
.source "CastConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$PrevNextPolicy;,
        Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$NotificationAction;
    }
.end annotation


# static fields
.field public static final CCL_DEFAULT_FORWARD_STEP_S:I = 0x1e

.field public static final FEATURE_AUTO_RECONNECT:I = 0x20

.field public static final FEATURE_CAPTIONS_PREFERENCE:I = 0x10

.field public static final FEATURE_DEBUGGING:I = 0x1

.field public static final FEATURE_LOCKSCREEN:I = 0x2

.field public static final FEATURE_NOTIFICATION:I = 0x4

.field public static final FEATURE_WIFI_RECONNECT:I = 0x8

.field public static final NEXT_PREV_VISIBILITY_POLICY_ALWAYS:I = 0x3

.field public static final NEXT_PREV_VISIBILITY_POLICY_DISABLED:I = 0x2

.field public static final NEXT_PREV_VISIBILITY_POLICY_HIDDEN:I = 0x1

.field public static final NOTIFICATION_ACTION_DISCONNECT:I = 0x4

.field public static final NOTIFICATION_ACTION_FORWARD:I = 0x6

.field public static final NOTIFICATION_ACTION_PLAY_PAUSE:I = 0x1

.field public static final NOTIFICATION_ACTION_REWIND:I = 0x5

.field public static final NOTIFICATION_ACTION_SKIP_NEXT:I = 0x2

.field public static final NOTIFICATION_ACTION_SKIP_PREVIOUS:I = 0x3

.field private static final NOTIFICATION_MAX_COMPACT_ACTIONS:I = 0x3

.field private static final NOTIFICATION_MAX_EXPANDED_ACTIONS:I = 0x5


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mCapabilities:I

.field private mCastControllerImmersive:Z

.field private mCustomNotificationService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisableLaunchOnConnect:Z

.field private mForwardStep:I

.field private mLaunchOptions:Lcom/google/android/gms/cast/LaunchOptions;

.field private mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextPrevVisibilityPolicy:I

.field private mNotificationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationCompactActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$000(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 112
    :cond_0
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$100(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 115
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$200(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 118
    :cond_2
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$300(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 121
    :cond_3
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$400(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 124
    :cond_4
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$500(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    .line 127
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$600(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNotificationActions:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$700(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNotificationCompactActions:Ljava/util/List;

    .line 129
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$800(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNextPrevVisibilityPolicy:I

    .line 130
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$900(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mApplicationId:Ljava/lang/String;

    .line 131
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1000(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mTargetActivity:Ljava/lang/Class;

    .line 132
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1100(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNamespaces:Ljava/util/List;

    .line 135
    :cond_6
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1200(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 136
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;-><init>()V

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1200(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->setLocale(Ljava/util/Locale;)Lcom/google/android/gms/cast/LaunchOptions$Builder;

    move-result-object v0

    .line 137
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1300(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->build()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mLaunchOptions:Lcom/google/android/gms/cast/LaunchOptions;

    goto :goto_0

    .line 139
    :cond_7
    new-instance v0, Lcom/google/android/gms/cast/LaunchOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->setRelaunchIfRunning(Z)Lcom/google/android/gms/cast/LaunchOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/LaunchOptions$Builder;->build()Lcom/google/android/gms/cast/LaunchOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mLaunchOptions:Lcom/google/android/gms/cast/LaunchOptions;

    .line 141
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1400(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCastControllerImmersive:Z

    .line 142
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1500(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mForwardStep:I

    .line 143
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1600(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCustomNotificationService:Ljava/lang/Class;

    .line 144
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1700(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 145
    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;->access$1800(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mDisableLaunchOnConnect:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCapabilities:I

    return v0
.end method

.method public getCustomNotificationService()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCustomNotificationService:Ljava/lang/Class;

    return-object v0
.end method

.method public getForwardStep()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mForwardStep:I

    return v0
.end method

.method public getLaunchOptions()Lcom/google/android/gms/cast/LaunchOptions;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mLaunchOptions:Lcom/google/android/gms/cast/LaunchOptions;

    return-object v0
.end method

.method public getMediaRouteDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mMediaRouteDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNamespaces:Ljava/util/List;

    return-object v0
.end method

.method public getNextPrevVisibilityPolicy()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNextPrevVisibilityPolicy:I

    return v0
.end method

.method public getNotificationActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNotificationActions:Ljava/util/List;

    return-object v0
.end method

.method public getNotificationCompactActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mNotificationCompactActions:Ljava/util/List;

    return-object v0
.end method

.method public getTargetActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mTargetActivity:Ljava/lang/Class;

    return-object v0
.end method

.method public isCastControllerImmersive()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mCastControllerImmersive:Z

    return v0
.end method

.method public isDisableLaunchOnConnect()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/CastConfiguration;->mDisableLaunchOnConnect:Z

    return v0
.end method
