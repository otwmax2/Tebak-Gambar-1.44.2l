###### Class com.google.android.gms.ads.internal.client.e (com.google.android.gms.ads.internal.client.e)
.class final Lcom/google/android/gms/ads/internal/client/e;
.super Lcom/google/android/gms/ads/internal/client/n;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/google/android/gms/internal/ads/zzbnf;

.field final synthetic d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/client/zzaw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbnf;Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/client/e;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/client/e;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbiw;-><init>()V

    return-object v0
.end method

.method public final bridge synthetic b(Lcom/google/android/gms/ads/internal/client/zzce;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/e;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbij;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/client/e;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    const v3, 0xdbd26a0

    .line 2
    invoke-interface {p1, v0, v1, v3, v2}, Lcom/google/android/gms/ads/internal/client/zzce;->U3(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbnf;ILcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzbip;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic c()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/e;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/e;->b:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.DynamiteH5AdsManagerCreatorImpl"

    sget-object v3, Lcom/google/android/gms/ads/internal/client/zzah;->a:Lcom/google/android/gms/ads/internal/client/zzah;

    .line 2
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbze;->b(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbzc;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzbis;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/client/e;->c:Lcom/google/android/gms/internal/ads/zzbnf;

    const v3, 0xdbd26a0

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbij;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/client/e;->d:Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;

    .line 3
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/ads/h5/OnH5AdsEventListener;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbis;->g5(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbnf;ILcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzbip;

    move-result-object v0
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzbzd; {:try_start_6 .. :try_end_22} :catch_23
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_22} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    const/4 v0, 0x0

    :goto_24
    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.client.zzah (com.google.android.gms.ads.internal.client.zzah)
.class public final synthetic Lcom/google/android/gms/ads/internal/client/zzah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbzc;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/ads/internal/client/zzah;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzah;->a:Lcom/google/android/gms/ads/internal/client/zzah;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbir;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbis;

    move-result-object p1

    return-object p1
.end method
