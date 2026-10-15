###### Class com.vungle.mediation.AdapterParametersParser (com.vungle.mediation.AdapterParametersParser)
.class Lcom/vungle/mediation/AdapterParametersParser;
.super Ljava/lang/Object;
.source "AdapterParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/mediation/AdapterParametersParser$Config;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/mediation/VungleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/mediation/AdapterParametersParser;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Landroid/os/Bundle;)Lcom/vungle/mediation/AdapterParametersParser$Config;
    .registers 4

    if-eqz p1, :cond_f

    const-string v0, "uniqueVungleRequestKey"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 3
    :goto_10
    new-instance v0, Lcom/vungle/mediation/AdapterParametersParser$Config;

    invoke-direct {v0}, Lcom/vungle/mediation/AdapterParametersParser$Config;-><init>()V

    .line 4
    invoke-static {v0, p0}, Lcom/vungle/mediation/AdapterParametersParser$Config;->a(Lcom/vungle/mediation/AdapterParametersParser$Config;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {v0, p1}, Lcom/vungle/mediation/AdapterParametersParser$Config;->b(Lcom/vungle/mediation/AdapterParametersParser$Config;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.mediation.AdapterParametersParser.Config (com.vungle.mediation.AdapterParametersParser$Config)
.class Lcom/vungle/mediation/AdapterParametersParser$Config;
.super Ljava/lang/Object;
.source "AdapterParametersParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/mediation/AdapterParametersParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/mediation/AdapterParametersParser$Config;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/AdapterParametersParser$Config;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/vungle/mediation/AdapterParametersParser$Config;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/mediation/AdapterParametersParser$Config;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/AdapterParametersParser$Config;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestUniqueId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/mediation/AdapterParametersParser$Config;->b:Ljava/lang/String;

    return-object v0
.end method
