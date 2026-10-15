###### Class com.google.firebase.dynamiclinks.internal.a (com.google.firebase.dynamiclinks.internal.a)
.class final synthetic Lcom/google/firebase/dynamiclinks/internal/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"

# interfaces
.implements Lk5/h;


# static fields
.field static final a:Lk5/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/firebase/dynamiclinks/internal/a;

    invoke-direct {v0}, Lcom/google/firebase/dynamiclinks/internal/a;-><init>()V

    sput-object v0, Lcom/google/firebase/dynamiclinks/internal/a;->a:Lk5/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 5

    .line 1
    new-instance v0, Lb6/f;

    const-class v1, Lb5/g;

    .line 2
    invoke-interface {p1, v1}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g;

    const-class v2, Le5/a;

    invoke-interface {p1, v2}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le5/a;

    invoke-direct {v0, v1, p1}, Lb6/f;-><init>(Lb5/g;Le5/a;)V

    return-object v0
.end method
