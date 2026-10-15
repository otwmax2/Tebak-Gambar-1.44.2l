###### Class com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar (com.google.firebase.analytics.connector.internal.AnalyticsConnectorRegistrar)
.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@20.1.2"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getComponents$0(Lk5/e;)Le5/a;
    .registers 4

    .line 1
    const-class v0, Lb5/g;

    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb5/g;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v1}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lh6/d;

    .line 3
    invoke-interface {p0, v2}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/d;

    .line 4
    invoke-static {v0, v1, p0}, Le5/b;->h(Lb5/g;Landroid/content/Context;Lh6/d;)Le5/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Le5/a;

    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lb5/g;

    .line 2
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lh6/d;

    .line 4
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/firebase/analytics/connector/internal/a;

    .line 5
    invoke-virtual {v1, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lk5/c$b;->e()Lk5/c$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-analytics"

    const-string v2, "20.1.2"

    .line 8
    invoke-static {v1, v2}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.analytics.connector.internal.a (com.google.firebase.analytics.connector.internal.a)
.class public final synthetic Lcom/google/firebase/analytics/connector/internal/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@20.1.2"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lcom/google/firebase/analytics/connector/internal/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/analytics/connector/internal/a;

    invoke-direct {v0}, Lcom/google/firebase/analytics/connector/internal/a;-><init>()V

    sput-object v0, Lcom/google/firebase/analytics/connector/internal/a;->a:Lcom/google/firebase/analytics/connector/internal/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;->lambda$getComponents$0(Lk5/e;)Le5/a;

    move-result-object p1

    return-object p1
.end method
