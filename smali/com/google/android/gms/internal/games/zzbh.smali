###### Class com.google.android.gms.internal.games.zzbh (com.google.android.gms.internal.games.zzbh)
.class final Lcom/google/android/gms/internal/games/zzbh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# direct methods
.method static a(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/RemoteCall<",
            "Lcom/google/android/gms/games/internal/zzf;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;>;)",
            "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
            "Lcom/google/android/gms/games/internal/zzf;",
            "TResultT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/TaskApiCall;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/games/zzbg;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/games/zzbg;-><init>(Lcom/google/android/gms/common/api/internal/RemoteCall;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->b(Lcom/google/android/gms/common/api/internal/RemoteCall;)Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall$Builder;->a()Lcom/google/android/gms/common/api/internal/TaskApiCall;

    move-result-object p0

    return-object p0
.end method

###### Class com.google.android.gms.internal.games.zzbg (com.google.android.gms.internal.games.zzbg)
.class final synthetic Lcom/google/android/gms/internal/games/zzbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/RemoteCall;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/RemoteCall;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/games/zzbg;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/games/zzbg;->a:Lcom/google/android/gms/common/api/internal/RemoteCall;

    check-cast p1, Lcom/google/android/gms/games/internal/zzf;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/RemoteCall;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    goto :goto_d

    :catch_c
    move-exception p1

    .line 3
    :goto_d
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->d(Ljava/lang/Exception;)Z

    return-void
.end method
