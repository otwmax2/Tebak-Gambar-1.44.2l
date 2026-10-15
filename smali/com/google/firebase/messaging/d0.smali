###### Class com.google.firebase.messaging.d0 (com.google.firebase.messaging.d0)
.class final synthetic Lcom/google/firebase/messaging/d0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lj3/e;


# static fields
.field static final a:Lj3/e;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/messaging/d0;

    invoke-direct {v0}, Lcom/google/firebase/messaging/d0;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/d0;->a:Lj3/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ls6/b;

    invoke-virtual {p1}, Ls6/b;->c()[B

    move-result-object p1

    return-object p1
.end method
