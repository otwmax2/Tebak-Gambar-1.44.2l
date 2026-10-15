###### Class com.facebook.bolts.AppLinks (com.facebook.bolts.AppLinks)
.class public final Lcom/facebook/bolts/AppLinks;
.super Ljava/lang/Object;
.source "AppLinks.kt"


# static fields
.field public static final INSTANCE:Lcom/facebook/bolts/AppLinks;

.field public static final KEY_NAME_APPLINK_DATA:Ljava/lang/String; = "al_applink_data"

.field public static final KEY_NAME_EXTRAS:Ljava/lang/String; = "extras"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/facebook/bolts/AppLinks;

    invoke-direct {v0}, Lcom/facebook/bolts/AppLinks;-><init>()V

    sput-object v0, Lcom/facebook/bolts/AppLinks;->INSTANCE:Lcom/facebook/bolts/AppLinks;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "al_applink_data"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final getAppLinkExtras(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lcom/facebook/bolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    const-string v0, "extras"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
