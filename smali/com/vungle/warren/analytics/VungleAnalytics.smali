###### Class com.vungle.warren.analytics.VungleAnalytics (com.vungle.warren.analytics.VungleAnalytics)
.class public Lcom/vungle/warren/analytics/VungleAnalytics;
.super Ljava/lang/Object;
.source "VungleAnalytics.java"

# interfaces
.implements Lcom/vungle/warren/analytics/AdAnalytics;


# static fields
.field private static final c:Ljava/lang/String; = "VungleAnalytics"


# instance fields
.field private final a:Lcom/vungle/warren/VungleApiClient;

.field private final b:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/persistence/Repository;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->a:Lcom/vungle/warren/VungleApiClient;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->b:Lcom/vungle/warren/persistence/Repository;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ping([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .line 1
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p1

    .line 2
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_96

    aget-object v4, p1, v3

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_92

    .line 5
    :try_start_16
    iget-object v5, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v5, v4}, Lcom/vungle/warren/VungleApiClient;->pingTPAT(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 7
    :cond_22
    iget-object v5, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->b:Lcom/vungle/warren/persistence/Repository;

    new-instance v6, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v6, v4}, Lcom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_2c
    .catch Lcom/vungle/warren/VungleApiClient$ClearTextTrafficException; {:try_start_16 .. :try_end_2c} :catch_7c
    .catch Ljava/net/MalformedURLException; {:try_start_16 .. :try_end_2c} :catch_44
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_16 .. :try_end_2c} :catch_2d

    goto :goto_92

    .line 8
    :catch_2d
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete sent ping URL : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 9
    :catch_44
    :try_start_44
    iget-object v5, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->b:Lcom/vungle/warren/persistence/Repository;

    new-instance v6, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v6, v4}, Lcom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/vungle/warren/persistence/Repository;->delete(Ljava/lang/Object;)V
    :try_end_4e
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_44 .. :try_end_4e} :catch_4f

    goto :goto_65

    .line 10
    :catch_4f
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DBException deleting : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_65
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid Url : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    .line 12
    :catch_7c
    sget-object v5, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cleartext Network Traffic is Blocked : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_92
    :goto_92
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    :cond_96
    new-array p1, v2, [Ljava/lang/String;

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public retryUnsent()[Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->b:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->loadAll(Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    :goto_1d
    if-ge v1, v2, :cond_2c

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/model/AnalyticUrl;

    iget-object v4, v4, Lcom/vungle/warren/model/AnalyticUrl;->url:Ljava/lang/String;

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 5
    :cond_2c
    invoke-virtual {p0, v3}, Lcom/vungle/warren/analytics/VungleAnalytics;->ping([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_31
    new-array v0, v1, [Ljava/lang/String;

    return-object v0
.end method

.method public ri(Lcom/google/gson/o;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->a:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0, p1}, Lcom/vungle/warren/VungleApiClient;->ri(Lcom/google/gson/o;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    new-instance v0, Lcom/vungle/warren/analytics/VungleAnalytics$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/analytics/VungleAnalytics$1;-><init>(Lcom/vungle/warren/analytics/VungleAnalytics;)V

    invoke-interface {p1, v0}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    return-void
.end method

.method public saveVungleUrls([Ljava/lang/String;)V
    .registers 8

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_30

    aget-object v2, p1, v1

    .line 2
    invoke-static {v2}, Lcom/vungle/warren/utility/VungleUrlUtility;->isVungleUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 3
    :try_start_c
    iget-object v3, p0, Lcom/vungle/warren/analytics/VungleAnalytics;->b:Lcom/vungle/warren/persistence/Repository;

    new-instance v4, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v4, v2}, Lcom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_16
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_c .. :try_end_16} :catch_17

    goto :goto_2d

    .line 4
    :catch_17
    sget-object v3, Lcom/vungle/warren/analytics/VungleAnalytics;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t save failed to ping URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    return-void
.end method

###### Class com.vungle.warren.analytics.VungleAnalytics.AnonymousClass1 (com.vungle.warren.analytics.VungleAnalytics$1)
.class Lcom/vungle/warren/analytics/VungleAnalytics$1;
.super Ljava/lang/Object;
.source "VungleAnalytics.java"

# interfaces
.implements Lcom/vungle/warren/network/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/analytics/VungleAnalytics;->ri(Lcom/google/gson/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/Callback<",
        "Lcom/google/gson/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/analytics/VungleAnalytics;


# direct methods
.method constructor <init>(Lcom/vungle/warren/analytics/VungleAnalytics;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/analytics/VungleAnalytics$1;->a:Lcom/vungle/warren/analytics/VungleAnalytics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vungle/warren/network/Call;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/analytics/VungleAnalytics;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "send RI Failure"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lcom/vungle/warren/network/Call;Lcom/vungle/warren/network/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/warren/network/Call<",
            "Lcom/google/gson/o;",
            ">;",
            "Lcom/vungle/warren/network/Response<",
            "Lcom/google/gson/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/warren/analytics/VungleAnalytics;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "send RI success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
