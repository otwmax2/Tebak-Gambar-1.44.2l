###### Class com.google.android.gms.internal.ads.zzegr (com.google.android.gms.internal.ads.zzegr)
.class public final Lcom/google/android/gms/internal/ads/zzegr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzddw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzddw;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegr;->a:Lcom/google/android/gms/internal/ads/zzddw;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzegn;)Ljava/lang/Object;
    .registers 8

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzegp;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzego;->a:Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzegp;-><init>(Lcom/google/android/gms/internal/ads/zzegr;Lcom/google/android/gms/internal/ads/zzdee;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegr;->a:Lcom/google/android/gms/internal/ads/zzddw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrb;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzddw;->c(Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzdcz;)Lcom/google/android/gms/internal/ads/zzdcw;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzegq;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzegq;-><init>(Lcom/google/android/gms/internal/ads/zzegr;Lcom/google/android/gms/internal/ads/zzdcw;)V

    .line 2
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzegn;->c(Lcom/google/android/gms/ads/internal/zzf;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcw;->i()Lcom/google/android/gms/internal/ads/zzdcv;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzego (com.google.android.gms.internal.ads.zzego)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzego;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdee;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzego;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzego;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzego;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzego;->a:Lcom/google/android/gms/internal/ads/zzego;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvb;)V
    .registers 4

    return-void
.end method
