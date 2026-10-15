###### Class com.google.android.gms.measurement.internal.a0 (com.google.android.gms.measurement.internal.a0)
.class final Lcom/google/android/gms/measurement/internal/a0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzr;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzfz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfz;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/util/List;ZZ)V
    .registers 9

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_7e

    if-eq p1, v1, :cond_53

    if-eq p1, v0, :cond_46

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1b

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->p()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto/16 :goto_8a

    :cond_1b
    if-eqz p4, :cond_2a

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->u()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_2a
    if-nez p5, :cond_39

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_39
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    .line 10
    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_53
    if-eqz p4, :cond_62

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_62
    if-nez p5, :cond_71

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->n()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_71
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    goto :goto_8a

    :cond_7e
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/a0;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    .line 22
    :goto_8a
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x0

    if-eq p4, v1, :cond_b6

    const/4 v2, 0x2

    if-eq p4, v2, :cond_aa

    if-eq p4, v0, :cond_9a

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_9a
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p5, p3}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_aa
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 26
    :cond_b6
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
