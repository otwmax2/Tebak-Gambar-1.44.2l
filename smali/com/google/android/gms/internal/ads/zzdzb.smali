###### Class com.google.android.gms.internal.ads.zzdzb (com.google.android.gms.internal.ads.zzdzb)
.class public final Lcom/google/android/gms/internal/ads/zzdzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdyx;

.field private final b:Lcom/google/android/gms/internal/ads/zzfuu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyx;Lcom/google/android/gms/internal/ads/zzfuu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->a:Lcom/google/android/gms/internal/ads/zzdyx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzb;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzfcd;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzb;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->a:Lcom/google/android/gms/internal/ads/zzdyx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzdyz;-><init>(Lcom/google/android/gms/internal/ads/zzdyx;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzfuu;->e(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdza;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdza;-><init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzfcd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzb;->b:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfuj;->q(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfuf;Ljava/util/concurrent/Executor;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdyz (com.google.android.gms.internal.ads.zzdyz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdyz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdyx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdyx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyz;->a:Lcom/google/android/gms/internal/ads/zzdyx;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyz;->a:Lcom/google/android/gms/internal/ads/zzdyx;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
