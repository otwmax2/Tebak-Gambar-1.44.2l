###### Class com.google.android.gms.cloudmessaging.u (com.google.android.gms.cloudmessaging.u)
.class final Lcom/google/android/gms/cloudmessaging/u;
.super Lcom/google/android/gms/internal/cloudmessaging/zze;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/cloudmessaging/Rpc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/u;->a:Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cloudmessaging/zze;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/u;->a:Lcom/google/android/gms/cloudmessaging/Rpc;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->h(Lcom/google/android/gms/cloudmessaging/Rpc;Landroid/os/Message;)V

    return-void
.end method
