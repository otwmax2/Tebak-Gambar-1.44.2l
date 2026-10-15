###### Class com.vungle.mediation.VungleConsent (com.vungle.mediation.VungleConsent)
.class public Lcom/vungle/mediation/VungleConsent;
.super Ljava/lang/Object;
.source "VungleConsent.java"


# static fields
.field private static a:Lcom/vungle/warren/Vungle$Consent; = null

.field private static b:Ljava/lang/String; = ""


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

.method public static getCurrentVungleConsent()Lcom/vungle/warren/Vungle$Consent;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleConsent;->a:Lcom/vungle/warren/Vungle$Consent;

    return-object v0
.end method

.method public static getCurrentVungleConsentMessageVersion()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/mediation/VungleConsent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    .registers 2

    .line 1
    sput-object p0, Lcom/vungle/mediation/VungleConsent;->a:Lcom/vungle/warren/Vungle$Consent;

    .line 2
    sput-object p1, Lcom/vungle/mediation/VungleConsent;->b:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result p0

    if-eqz p0, :cond_15

    sget-object p0, Lcom/vungle/mediation/VungleConsent;->a:Lcom/vungle/warren/Vungle$Consent;

    if-eqz p0, :cond_15

    sget-object p1, Lcom/vungle/mediation/VungleConsent;->b:Ljava/lang/String;

    if-eqz p1, :cond_15

    .line 4
    invoke-static {p0, p1}, Lcom/vungle/warren/Vungle;->updateConsentStatus(Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
