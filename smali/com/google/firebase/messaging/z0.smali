###### Class com.google.firebase.messaging.z0 (com.google.firebase.messaging.z0)
.class Lcom/google/firebase/messaging/z0;
.super Landroid/os/Binder;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/z0$a;
    }
.end annotation


# instance fields
.field private final o:Lcom/google/firebase/messaging/z0$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/z0$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/z0;->o:Lcom/google/firebase/messaging/z0$a;

    return-void
.end method

.method static final synthetic a(Lcom/google/firebase/messaging/c1$a;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/messaging/c1$a;->b()V

    return-void
.end method


# virtual methods
.method b(Lcom/google/firebase/messaging/c1$a;)V
    .registers 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2b

    const/4 v0, 0x3

    const-string v1, "FirebaseMessaging"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "service received new intent via bind strategy"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v0, p0, Lcom/google/firebase/messaging/z0;->o:Lcom/google/firebase/messaging/z0$a;

    .line 4
    iget-object v1, p1, Lcom/google/firebase/messaging/c1$a;->a:Landroid/content/Intent;

    .line 5
    invoke-interface {v0, v1}, Lcom/google/firebase/messaging/z0$a;->a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/messaging/x0;->o:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/messaging/y0;

    invoke-direct {v2, p1}, Lcom/google/firebase/messaging/y0;-><init>(Lcom/google/firebase/messaging/c1$a;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->d(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 7
    :cond_2b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Binding only allowed within app"

    .line 8
    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class com.google.firebase.messaging.z0.a (com.google.firebase.messaging.z0$a)
.class interface abstract Lcom/google/firebase/messaging/z0$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.firebase.messaging.y0 (com.google.firebase.messaging.y0)
.class final synthetic Lcom/google/firebase/messaging/y0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final a:Lcom/google/firebase/messaging/c1$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/c1$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/y0;->a:Lcom/google/firebase/messaging/c1$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/google/firebase/messaging/y0;->a:Lcom/google/firebase/messaging/c1$a;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/z0;->a(Lcom/google/firebase/messaging/c1$a;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
