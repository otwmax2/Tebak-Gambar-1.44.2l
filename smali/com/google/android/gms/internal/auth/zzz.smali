###### Class com.google.android.gms.internal.auth.zzz (com.google.android.gms.internal.auth.zzz)
.class final Lcom/google/android/gms/internal/auth/zzz;
.super Lcom/google/android/gms/internal/auth/zzl;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"


# instance fields
.field final synthetic o:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/auth/zzab;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/zzz;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/zzl;-><init>()V

    return-void
.end method


# virtual methods
.method public final p7(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/AccountChangeEventsResponse;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzz;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzab;->z(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
