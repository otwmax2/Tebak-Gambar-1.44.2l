###### Class com.vungle.mediation.VungleNetworkSettings (com.vungle.mediation.VungleNetworkSettings)
.class public Lcom/vungle/mediation/VungleNetworkSettings;
.super Ljava/lang/Object;
.source "VungleNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;
    }
.end annotation


# static fields
.field private static a:J = 0x3200000L

.field private static b:J = 0x3300000L

.field private static c:Z

.field private static d:Lcom/vungle/warren/VungleSettings;

.field private static e:Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 3

    .line 1
    new-instance v0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    sget-wide v1, Lcom/vungle/mediation/VungleNetworkSettings;->a:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/VungleSettings$Builder;->setMinimumSpaceForInit(J)Lcom/vungle/warren/VungleSettings$Builder;

    move-result-object v0

    sget-wide v1, Lcom/vungle/mediation/VungleNetworkSettings;->b:J

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/VungleSettings$Builder;->setMinimumSpaceForAd(J)Lcom/vungle/warren/VungleSettings$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/vungle/mediation/VungleNetworkSettings;->c:Z

    .line 4
    invoke-virtual {v0, v1}, Lcom/vungle/warren/VungleSettings$Builder;->setAndroidIdOptOut(Z)Lcom/vungle/warren/VungleSettings$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->disableBannerRefresh()Lcom/vungle/warren/VungleSettings$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    sput-object v0, Lcom/vungle/mediation/VungleNetworkSettings;->d:Lcom/vungle/warren/VungleSettings;

    .line 7
    sget-object v1, Lcom/vungle/mediation/VungleNetworkSettings;->e:Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;

    if-eqz v1, :cond_28

    .line 8
    invoke-interface {v1, v0}, Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;->onVungleSettingsChanged(Lcom/vungle/warren/VungleSettings;)V

    :cond_28
    return-void
.end method

.method public static getVungleSettings()Lcom/vungle/warren/VungleSettings;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleNetworkSettings;->d:Lcom/vungle/warren/VungleSettings;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Lcom/vungle/warren/VungleSettings$Builder;

    invoke-direct {v0}, Lcom/vungle/warren/VungleSettings$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->disableBannerRefresh()Lcom/vungle/warren/VungleSettings$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/VungleSettings$Builder;->build()Lcom/vungle/warren/VungleSettings;

    move-result-object v0

    sput-object v0, Lcom/vungle/mediation/VungleNetworkSettings;->d:Lcom/vungle/warren/VungleSettings;

    .line 3
    :cond_13
    sget-object v0, Lcom/vungle/mediation/VungleNetworkSettings;->d:Lcom/vungle/warren/VungleSettings;

    return-object v0
.end method

.method public static setAndroidIdOptOut(Z)V
    .registers 1

    .line 1
    sput-boolean p0, Lcom/vungle/mediation/VungleNetworkSettings;->c:Z

    .line 2
    invoke-static {}, Lcom/vungle/mediation/VungleNetworkSettings;->a()V

    return-void
.end method

.method public static setMinSpaceForAdLoad(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/vungle/mediation/VungleNetworkSettings;->b:J

    .line 2
    invoke-static {}, Lcom/vungle/mediation/VungleNetworkSettings;->a()V

    return-void
.end method

.method public static setMinSpaceForInit(J)V
    .registers 2

    .line 1
    sput-wide p0, Lcom/vungle/mediation/VungleNetworkSettings;->a:J

    .line 2
    invoke-static {}, Lcom/vungle/mediation/VungleNetworkSettings;->a()V

    return-void
.end method

.method public static setVungleSettingsChangedListener(Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;)V
    .registers 1

    .line 1
    sput-object p0, Lcom/vungle/mediation/VungleNetworkSettings;->e:Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;

    return-void
.end method

###### Class com.vungle.mediation.VungleNetworkSettings.VungleSettingsChangedListener (com.vungle.mediation.VungleNetworkSettings$VungleSettingsChangedListener)
.class public interface abstract Lcom/vungle/mediation/VungleNetworkSettings$VungleSettingsChangedListener;
.super Ljava/lang/Object;
.source "VungleNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/mediation/VungleNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VungleSettingsChangedListener"
.end annotation


# virtual methods
.method public abstract onVungleSettingsChanged(Lcom/vungle/warren/VungleSettings;)V
.end method
