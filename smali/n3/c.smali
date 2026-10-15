###### Class n3.c (n3.c)
.class public final Ln3/c;
.super Ljava/lang/Object;
.source "InstanceFactory.java"

# interfaces
.implements Ln3/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:Ln3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/c;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ln3/c;->b:Ln3/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ln3/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ln3/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln3/c;

    const-string v1, "instance cannot be null"

    invoke-static {p0, v1}, Ln3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Ln3/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c;->a:Ljava/lang/Object;

    return-object v0
.end method
