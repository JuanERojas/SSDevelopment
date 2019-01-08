.class public Lcom/tikilive/ui/notify/DeviceNotifier;
.super Ljava/lang/Object;
.source "DeviceNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.tikilive.ui.notify.DeviceNotifier"

.field private static final UNKNOWN_MAC_ADDRESS:Ljava/lang/String; = "00:00:00:00:00:00"


# instance fields
.field private mApi:Lcom/tikilive/ui/backend/Api;

.field private mContext:Landroid/content/Context;

.field private mDeviceId:Ljava/lang/String;

.field private mLastNotified:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 44
    iput-wide v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mLastNotified:J

    .line 47
    iput-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/tikilive/ui/backend/Api;->getInstance(Landroid/content/Context;)Lcom/tikilive/ui/backend/Api;

    move-result-object p1

    iput-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mApi:Lcom/tikilive/ui/backend/Api;

    return-void
.end method

.method static synthetic access$000(Lcom/tikilive/ui/notify/DeviceNotifier;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/tikilive/ui/notify/DeviceNotifier;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->showForcedLogoutScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->showAccountLockedScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->showDeviceLockedScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->showPlaybackTimeLimitScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->showDeviceDisconnectedScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tikilive/ui/notify/DeviceNotifier;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->showDeviceDisabledScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/tikilive/ui/notify/DeviceNotifier;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/tikilive/ui/notify/DeviceNotifier;->showDeviceForbiddenScreen(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/tikilive/ui/notify/DeviceNotifier;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getMACAddress()Ljava/lang/String;
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getWiFiMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "02:00:00:00:00:00"

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v0, "wlan0"

    .line 212
    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getMACAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 214
    invoke-static {v1}, Lcom/tikilive/ui/helper/Utils;->getMACAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "eth0"

    .line 218
    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->getMACAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 220
    invoke-static {v1}, Lcom/tikilive/ui/helper/Utils;->getMACAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    const-string v0, "00:00:00:00:00:00"

    :cond_3
    return-object v0
.end method

.method private setDeviceId()V
    .locals 3

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "9774d56d682e549c"

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "-"

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tikilive/ui/helper/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mDeviceId:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private showAccountLockedScreen(Ljava/lang/String;)V
    .locals 4

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x102

    .line 234
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    const-string v2, "Account Locked"

    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12001e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v1, "MESSAGE"

    .line 244
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeviceDisabledScreen()V
    .locals 4

    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x103

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    .line 269
    iget-object v2, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f1200cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MESSAGE"

    .line 273
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeviceDisconnectedScreen(Ljava/lang/String;)V
    .locals 4

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x106

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    .line 258
    iget-object v2, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f1200ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MESSAGE"

    .line 260
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeviceForbiddenScreen(Ljava/lang/String;)V
    .locals 4

    .line 279
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x103

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "TITLE"

    .line 282
    iget-object v2, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const v3, 0x7f1200cf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MESSAGE"

    .line 284
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeviceLockedScreen(Ljava/lang/String;)V
    .locals 2

    .line 250
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v1, Lcom/tikilive/ui/account/ReplaceDeviceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showForcedLogoutScreen()V
    .locals 3

    .line 290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x105

    .line 291
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPlaybackTimeLimitScreen(Ljava/lang/String;)V
    .locals 3

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tikilive/ui/activity/DeviceNotifiedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "TYPE"

    const/16 v2, 0x104

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MESSAGE"

    .line 298
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object p1, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->setDeviceId()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " "

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " Android "

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetLastNotified()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 156
    iput-wide v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mLastNotified:J

    return-void
.end method

.method public sendNotification()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(J)V

    return-void
.end method

.method public sendNotification(J)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, p2, v0}, Lcom/tikilive/ui/notify/DeviceNotifier;->sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V

    return-void
.end method

.method public sendNotification(JLcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V
    .locals 11
    .param p3    # Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mLastNotified:J

    .line 55
    iget-object v0, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tikilive/ui/helper/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object p3, Lcom/tikilive/ui/notify/DeviceNotifier;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No connectivity, skipping device notification with playback time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/tikilive/ui/notify/DeviceNotifier;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending device notification with playback time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mApi:Lcom/tikilive/ui/backend/Api;

    .line 63
    invoke-virtual {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 64
    invoke-virtual {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-direct {p0}, Lcom/tikilive/ui/notify/DeviceNotifier;->getMACAddress()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    new-instance v9, Lcom/tikilive/ui/notify/DeviceNotifier$1;

    invoke-direct {v9, p0, p3}, Lcom/tikilive/ui/notify/DeviceNotifier$1;-><init>(Lcom/tikilive/ui/notify/DeviceNotifier;Lcom/tikilive/ui/notify/DeviceNotifier$OnNotifyDeviceListener;)V

    new-instance v10, Lcom/tikilive/ui/notify/DeviceNotifier$2;

    invoke-direct {v10, p0}, Lcom/tikilive/ui/notify/DeviceNotifier$2;-><init>(Lcom/tikilive/ui/notify/DeviceNotifier;)V

    move-wide v7, p1

    .line 62
    invoke-virtual/range {v2 .. v10}, Lcom/tikilive/ui/backend/Api;->notifyDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public shouldNotify()Z
    .locals 8

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 148
    iget-wide v2, p0, Lcom/tikilive/ui/notify/DeviceNotifier;->mLastNotified:J

    const-wide/32 v4, 0x927c0

    sub-long v6, v0, v4

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
