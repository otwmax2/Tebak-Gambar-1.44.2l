###### Class com.facebook.bolts.AppLink (com.facebook.bolts.AppLink)
.class public final Lcom/facebook/bolts/AppLink;
.super Ljava/lang/Object;
.source "AppLink.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/bolts/AppLink$Target;
    }
.end annotation


# instance fields
.field private final sourceUrl:Landroid/net/Uri;

.field private final targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/bolts/AppLink$Target;",
            ">;"
        }
    .end annotation
.end field

.field private final webUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lcom/facebook/bolts/AppLink$Target;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const-string v0, "sourceUrl"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webUrl"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/bolts/AppLink;->sourceUrl:Landroid/net/Uri;

    iput-object p3, p0, Lcom/facebook/bolts/AppLink;->webUrl:Landroid/net/Uri;

    if-nez p2, :cond_17

    .line 2
    invoke-static {}, Li9/j;->e()Ljava/util/List;

    move-result-object p2

    :cond_17
    iput-object p2, p0, Lcom/facebook/bolts/AppLink;->targets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getSourceUrl()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink;->sourceUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public final getTargets()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/bolts/AppLink$Target;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink;->targets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string v1, "unmodifiableList(field)"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getWebUrl()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink;->webUrl:Landroid/net/Uri;

    return-object v0
.end method

###### Class com.facebook.bolts.AppLink.Target (com.facebook.bolts.AppLink$Target)
.class public final Lcom/facebook/bolts/AppLink$Target;
.super Ljava/lang/Object;
.source "AppLink.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/bolts/AppLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Target"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/bolts/AppLink$Target;->packageName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/facebook/bolts/AppLink$Target;->className:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/facebook/bolts/AppLink$Target;->url:Landroid/net/Uri;

    .line 5
    iput-object p4, p0, Lcom/facebook/bolts/AppLink$Target;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAppName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink$Target;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink$Target;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink$Target;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/facebook/bolts/AppLink$Target;->url:Landroid/net/Uri;

    return-object v0
.end method
