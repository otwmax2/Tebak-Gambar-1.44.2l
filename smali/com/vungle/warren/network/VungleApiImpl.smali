###### Class com.vungle.warren.network.VungleApiImpl (com.vungle.warren.network.VungleApiImpl)
.class public Lcom/vungle/warren/network/VungleApiImpl;
.super Ljava/lang/Object;
.source "VungleApiImpl.java"

# interfaces
.implements Lcom/vungle/warren/network/VungleApi;


# static fields
.field private static final c:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lja/t;

.field b:Lja/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/vungle/warren/network/converters/JsonConverter;

    invoke-direct {v0}, Lcom/vungle/warren/network/converters/JsonConverter;-><init>()V

    sput-object v0, Lcom/vungle/warren/network/VungleApiImpl;->c:Lcom/vungle/warren/network/converters/Converter;

    .line 2
    new-instance v0, Lcom/vungle/warren/network/converters/EmptyResponseConverter;

    invoke-direct {v0}, Lcom/vungle/warren/network/converters/EmptyResponseConverter;-><init>()V

    sput-object v0, Lcom/vungle/warren/network/VungleApiImpl;->d:Lcom/vungle/warren/network/converters/Converter;

    return-void
.end method

.method public constructor <init>(Lja/t;Lja/e$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/VungleApiImpl;->a:Lja/t;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/VungleApiImpl;->b:Lja/e$a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lja/d0;",
            "TT;>;)",
            "Lcom/vungle/warren/network/Call<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lja/t;->l(Ljava/lang/String;)Lja/t;

    move-result-object p2

    invoke-virtual {p2}, Lja/t;->p()Lja/t$a;

    move-result-object p2

    if-eqz p3, :cond_2e

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lja/t$a;->b(Ljava/lang/String;Ljava/lang/String;)Lja/t$a;

    goto :goto_12

    .line 4
    :cond_2e
    invoke-virtual {p2}, Lja/t$a;->c()Lja/t;

    move-result-object p2

    invoke-virtual {p2}, Lja/t;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/VungleApiImpl;->c(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lja/a0$a;->c()Lja/a0$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lja/a0$a;->b()Lja/a0;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/vungle/warren/network/OkHttpCall;

    iget-object p3, p0, Lcom/vungle/warren/network/VungleApiImpl;->b:Lja/e$a;

    invoke-interface {p3, p1}, Lja/e$a;->a(Lja/a0;)Lja/e;

    move-result-object p1

    invoke-direct {p2, p1, p4}, Lcom/vungle/warren/network/OkHttpCall;-><init>(Lja/e;Lcom/vungle/warren/network/converters/Converter;)V

    return-object p2
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 1
    invoke-virtual {p3}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_9

    :cond_7
    const-string p3, ""

    .line 2
    :goto_9
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/VungleApiImpl;->c(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-static {p2, p3}, Lja/b0;->create(Lja/v;Ljava/lang/String;)Lja/b0;

    move-result-object p2

    invoke-virtual {p1, p2}, Lja/a0$a;->g(Lja/b0;)Lja/a0$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lja/a0$a;->b()Lja/a0;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/vungle/warren/network/OkHttpCall;

    iget-object p3, p0, Lcom/vungle/warren/network/VungleApiImpl;->b:Lja/e$a;

    invoke-interface {p3, p1}, Lja/e$a;->a(Lja/a0;)Lja/e;

    move-result-object p1

    sget-object p3, Lcom/vungle/warren/network/VungleApiImpl;->c:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p2, p1, p3}, Lcom/vungle/warren/network/OkHttpCall;-><init>(Lja/e;Lcom/vungle/warren/network/converters/Converter;)V

    return-object p2
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;
    .registers 4

    .line 1
    new-instance v0, Lja/a0$a;

    invoke-direct {v0}, Lja/a0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lja/a0$a;->j(Ljava/lang/String;)Lja/a0$a;

    move-result-object p2

    const-string v0, "User-Agent"

    .line 3
    invoke-virtual {p2, v0, p1}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object p1

    const-string p2, "Vungle-Version"

    const-string v0, "5.9.0"

    .line 4
    invoke-virtual {p1, p2, v0}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object p1

    const-string p2, "Content-Type"

    const-string v0, "application/json"

    .line 5
    invoke-virtual {p1, p2, v0}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ads(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public bustAnalytics(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public cacheBust(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public config(Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/network/VungleApiImpl;->a:Lja/t;

    invoke-virtual {v1}, Lja/t;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/network/VungleApiImpl;->d:Lcom/vungle/warren/network/converters/Converter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/vungle/warren/network/VungleApiImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/vungle/warren/network/Call;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/network/VungleApiImpl;->c:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApiImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public ri(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public sendLog(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public willPlayAd(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/gson/o;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->b(Ljava/lang/String;Ljava/lang/String;Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method
