###### Class com.google.android.gms.cloudmessaging.o (com.google.android.gms.cloudmessaging.o)
.class final synthetic Lcom/google/android/gms/cloudmessaging/o;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# static fields
.field static final a:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/cloudmessaging/o;

    invoke-direct {v0}, Lcom/google/android/gms/cloudmessaging/o;-><init>()V

    sput-object v0, Lcom/google/android/gms/cloudmessaging/o;->a:Lcom/google/android/gms/tasks/Continuation;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/cloudmessaging/Rpc;->b(Lcom/google/android/gms/tasks/Task;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
