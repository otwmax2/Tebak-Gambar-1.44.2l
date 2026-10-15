###### Class com.google.firebase.messaging.h (com.google.firebase.messaging.h)
.class final synthetic Lcom/google/firebase/messaging/h;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field static final o:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/h;

    invoke-direct {v0}, Lcom/google/firebase/messaging/h;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/h;->o:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
