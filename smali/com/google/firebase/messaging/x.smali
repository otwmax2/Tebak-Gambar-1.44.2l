###### Class com.google.firebase.messaging.x (com.google.firebase.messaging.x)
.class final synthetic Lcom/google/firebase/messaging/x;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lk5/h;


# static fields
.field static final a:Lk5/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/x;

    invoke-direct {v0}, Lcom/google/firebase/messaging/x;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/x;->a:Lk5/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->lambda$getComponents$0$FirebaseMessagingRegistrar(Lk5/e;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
