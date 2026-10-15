###### Class com.google.android.gms.internal.games.zzbv (com.google.android.gms.internal.games.zzbv)
.class final synthetic Lcom/google/android/gms/internal/games/zzbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private final c:Ljava/lang/String;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbv;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/gms/internal/games/zzbv;->b:J

    iget-object v3, p0, Lcom/google/android/gms/internal/games/zzbv;->c:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzf;->r0(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
