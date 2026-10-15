###### Class com.google.android.gms.internal.measurement.zzho (com.google.android.gms.internal.measurement.zzho)
.class public final Lcom/google/android/gms/internal/measurement/zzho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# static fields
.field private static final a:Lo/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzho;->a:Lo/a;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    const-class p0, Lcom/google/android/gms/internal/measurement/zzho;

    monitor-enter p0

    :try_start_3
    const-string v0, "com.google.android.gms.measurement"

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzho;->a:Lo/a;

    invoke-virtual {v1, v0}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-nez v2, :cond_26

    const-string v2, "content://com.google.android.gms.phenotype/"

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3
    invoke-virtual {v1, v0, v2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    monitor-exit p0

    return-object v2

    :cond_26
    monitor-exit p0

    return-object v2

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method
