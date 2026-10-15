###### Class com.twitter.sdk.android.core.b (com.twitter.sdk.android.core.b)
.class public Lcom/twitter/sdk/android/core/b;
.super Ljava/lang/Object;
.source "AuthTokenAdapter.java"

# interfaces
.implements Lcom/google/gson/t;
.implements Lcom/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/t<",
        "Lcom/twitter/sdk/android/core/a;",
        ">;",
        "Lcom/google/gson/k<",
        "Lcom/twitter/sdk/android/core/a;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/twitter/sdk/android/core/a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/b;->b:Ljava/util/Map;

    .line 2
    const-class v1, Lcom/twitter/sdk/android/core/t;

    const-string v2, "oauth1a"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/e;

    const-string v2, "oauth2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    const-string v2, "guest"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/b;->a:Lcom/google/gson/f;

    return-void
.end method

.method static d(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/twitter/sdk/android/core/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/twitter/sdk/android/core/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_29
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/b;->c(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Lcom/twitter/sdk/android/core/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;
    .registers 4

    .line 1
    check-cast p1, Lcom/twitter/sdk/android/core/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/b;->e(Lcom/twitter/sdk/android/core/a;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Lcom/twitter/sdk/android/core/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/p;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/gson/l;->l()Lcom/google/gson/o;

    move-result-object p1

    const-string p2, "auth_type"

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/gson/o;->D(Ljava/lang/String;)Lcom/google/gson/r;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/google/gson/r;->o()Ljava/lang/String;

    move-result-object p2

    const-string p3, "auth_token"

    .line 4
    invoke-virtual {p1, p3}, Lcom/google/gson/o;->A(Ljava/lang/String;)Lcom/google/gson/l;

    move-result-object p1

    .line 5
    iget-object p3, p0, Lcom/twitter/sdk/android/core/b;->a:Lcom/google/gson/f;

    sget-object v0, Lcom/twitter/sdk/android/core/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p3, p1, p2}, Lcom/google/gson/f;->g(Lcom/google/gson/l;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/a;

    return-object p1
.end method

.method public e(Lcom/twitter/sdk/android/core/a;Ljava/lang/reflect/Type;Lcom/google/gson/s;)Lcom/google/gson/l;
    .registers 5

    .line 1
    new-instance p2, Lcom/google/gson/o;

    invoke-direct {p2}, Lcom/google/gson/o;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/twitter/sdk/android/core/b;->d(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "auth_type"

    invoke-virtual {p2, v0, p3}, Lcom/google/gson/o;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/twitter/sdk/android/core/b;->a:Lcom/google/gson/f;

    invoke-virtual {p3, p1}, Lcom/google/gson/f;->z(Ljava/lang/Object;)Lcom/google/gson/l;

    move-result-object p1

    const-string p3, "auth_token"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/o;->t(Ljava/lang/String;Lcom/google/gson/l;)V

    return-object p2
.end method
