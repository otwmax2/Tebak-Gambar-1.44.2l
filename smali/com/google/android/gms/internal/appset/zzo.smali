###### Class com.google.android.gms.internal.appset.zzo (com.google.android.gms.internal.appset.zzo)
.class final Lcom/google/android/gms/internal/appset/zzo;
.super Lcom/google/android/gms/internal/appset/zze;
.source "com.google.android.gms:play-services-appset@@16.0.0"


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/appset/zzp;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/appset/zzo;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/appset/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final O6(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/appset/zzc;)V
    .registers 5

    if-eqz p2, :cond_10

    .line 1
    new-instance v0, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->W3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/gms/appset/zzc;->V3()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/appset/AppSetIdInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object p2, p0, Lcom/google/android/gms/internal/appset/zzo;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->b(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
