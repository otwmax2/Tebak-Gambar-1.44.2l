###### Class com.vungle.warren.utility.VungleUrlUtility (com.vungle.warren.utility.VungleUrlUtility)
.class public Lcom/vungle/warren/utility/VungleUrlUtility;
.super Ljava/lang/Object;
.source "VungleUrlUtility.java"


# static fields
.field private static final a:Ljava/lang/String; = "VungleUrlUtility"


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

.method public static isVungleUrl(Ljava/lang/String;)Z
    .registers 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".vungle.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    .line 3
    sget-object v0, Lcom/vungle/warren/utility/VungleUrlUtility;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
