.class public Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CaptionsPreferenceActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getInstance()Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;

    move-result-object p1

    const/16 v0, 0x10

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object p1, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->TAG:Ljava/lang/String;

    const-string v0, "Did you forget to enable FEATURE_CAPTIONS_PREFERENCE when you initialized the VideoCastManage?"

    invoke-static {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/utils/LogUtils;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->finish()V

    return-void

    .line 51
    :cond_0
    sget-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/utils/Utils;->IS_KITKAT_OR_ABOVE:Z

    if-eqz v0, :cond_1

    .line 52
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->finish()V

    return-void

    .line 56
    :cond_1
    sget v0, Lcom/google/android/libraries/cast/companionlibrary/R$xml;->caption_preference:I

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/VideoCastManager;->getTracksPreferenceManager()Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/CaptionsPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/TracksPreferenceManager;->setUpPreferences(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
