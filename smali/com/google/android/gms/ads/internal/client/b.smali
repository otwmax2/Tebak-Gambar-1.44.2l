###### Class com.google.android.gms.ads.internal.client.b (com.google.android.gms.ads.internal.client.b)
.class final Lcom/google/android/gms/ads/internal/client/b;
.super Lcom/google/android/gms/ads/internal/client/n;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbnf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;)V
    .registers 4

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/b;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    const-string v1, "out_of_context_tester"

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzaw;->r(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->C8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    const v2, 0xdbd26a0

    .line 5
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/ads/internal/client/zzce;->y1(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbnf;I)Lcom/google/android/gms/ads/internal/client/zzdj;

    move-result-object p1

    return-object p1

    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->C8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_44

    :try_start_1e
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    const-string v3, "com.google.android.gms.ads.DynamiteOutOfContextTesterCreatorImpl"

    sget-object v4, Lcom/google/android/gms/ads/internal/client/zzab;->a:Lcom/google/android/gms/ads/internal/client/zzab;

    .line 5
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzdk;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/b;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    const v4, 0xdbd26a0

    .line 6
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/ads/internal/client/zzdk;->A9(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbnf;I)Lcom/google/android/gms/ads/internal/client/zzdj;

    move-result-object v2
    :try_end_33
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_1e .. :try_end_33} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_33} :catch_34

    goto :goto_44

    :catch_34
    move-exception v0

    goto :goto_39

    :catch_36
    move-exception v0

    goto :goto_39

    :catch_38
    move-exception v0

    :goto_39
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/b;->b:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbsf;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbsh;

    move-result-object v1

    const-string v3, "ClientApiBroker.getOutOfContextTester"

    .line 8
    invoke-interface {v1, v0, v3}, Lcom/google/android/gms/internal/ads/zzbsh;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-object v2
.end method

###### Class com.google.android.gms.ads.internal.client.zzab (com.google.android.gms.ads.internal.client.zzab)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/ads/internal/client/zzab;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzab;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzab;->a:Lcom/google/android/gms/ads/internal/client/zzab;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_18

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IOutOfContextTesterCreator"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzdk;

    if-eqz v1, :cond_12

    .line 3
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzdk;

    goto :goto_18

    :cond_12
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzdk;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzdk;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_18
    return-object p1
.end method
