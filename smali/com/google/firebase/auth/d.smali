###### Class com.google.firebase.auth.d (com.google.firebase.auth.d)
.class final synthetic Lcom/google/firebase/auth/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lk5/h;


# static fields
.field static final a:Lk5/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/auth/d;

    invoke-direct {v0}, Lcom/google/firebase/auth/d;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/d;->a:Lk5/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 3

    .line 1
    const-class v0, Lb5/g;

    invoke-interface {p1, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/g;

    .line 2
    new-instance v0, Lj5/c0;

    invoke-direct {v0, p1}, Lj5/c0;-><init>(Lb5/g;)V

    return-object v0
.end method
