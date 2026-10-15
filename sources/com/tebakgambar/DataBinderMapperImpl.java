package com.tebakgambar;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import o8.b;
import o8.b0;
import o8.b1;
import o8.d;
import o8.d0;
import o8.d1;
import o8.f0;
import o8.h;
import o8.h0;
import o8.j;
import o8.j0;
import o8.l;
import o8.l0;
import o8.n;
import o8.n0;
import o8.p;
import o8.p0;
import o8.r;
import o8.r0;
import o8.t;
import o8.t0;
import o8.v;
import o8.v0;
import o8.x;
import o8.x0;
import o8.z;
import o8.z0;

/* JADX INFO: loaded from: classes2.dex */
public class DataBinderMapperImpl extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f26750a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap<String, Integer> f26751a;

        static {
            HashMap<String, Integer> map = new HashMap<>(28);
            f26751a = map;
            map.put("layout/activity_clue_event_tutorial_0", Integer.valueOf(R.layout.activity_clue_event_tutorial));
            map.put("layout/activity_edit_frame_0", Integer.valueOf(R.layout.activity_edit_frame));
            map.put("layout/activity_home_0", Integer.valueOf(R.layout.activity_home));
            map.put("layout/activity_how_to_play_0", Integer.valueOf(R.layout.activity_how_to_play));
            map.put("layout/activity_level_loading_0", Integer.valueOf(R.layout.activity_level_loading));
            map.put("layout/activity_level_selection_0", Integer.valueOf(R.layout.activity_level_selection));
            map.put("layout/activity_question_selection_0", Integer.valueOf(R.layout.activity_question_selection));
            map.put("layout/activity_regular_question_0", Integer.valueOf(R.layout.activity_regular_question));
            map.put("layout/activity_selfie_frame_chooser_0", Integer.valueOf(R.layout.activity_selfie_frame_chooser));
            map.put("layout/activity_send_question_0", Integer.valueOf(R.layout.activity_send_question));
            map.put("layout/activity_slider_0", Integer.valueOf(R.layout.activity_slider));
            map.put("layout/activity_sticker_campaign_0", Integer.valueOf(R.layout.activity_sticker_campaign));
            map.put("layout/activity_sticker_campaign_list_0", Integer.valueOf(R.layout.activity_sticker_campaign_list));
            map.put("layout/dialog_firebase_login_0", Integer.valueOf(R.layout.dialog_firebase_login));
            map.put("layout/fragment_header_0", Integer.valueOf(R.layout.fragment_header));
            map.put("layout/header_normal_0", Integer.valueOf(R.layout.header_normal));
            map.put("layout/header_selfie_frame_chooser_0", Integer.valueOf(R.layout.header_selfie_frame_chooser));
            map.put("layout/layout_dialog_increase_life_0", Integer.valueOf(R.layout.layout_dialog_increase_life));
            map.put("layout/layout_dialog_new_share_0", Integer.valueOf(R.layout.layout_dialog_new_share));
            map.put("layout/layout_dialog_share_0", Integer.valueOf(R.layout.layout_dialog_share));
            map.put("layout/layout_dialog_tg_free_answer_0", Integer.valueOf(R.layout.layout_dialog_tg_free_answer));
            map.put("layout/layout_dialog_tg_in_app_review_0", Integer.valueOf(R.layout.layout_dialog_tg_in_app_review));
            map.put("layout/row_item_campaign_detail_0", Integer.valueOf(R.layout.row_item_campaign_detail));
            map.put("layout/row_item_frame_0", Integer.valueOf(R.layout.row_item_frame));
            map.put("layout/row_item_level_0", Integer.valueOf(R.layout.row_item_level));
            map.put("layout/row_item_level_ad_unified_0", Integer.valueOf(R.layout.row_item_level_ad_unified));
            map.put("layout/row_item_question_0", Integer.valueOf(R.layout.row_item_question));
            map.put("layout/row_item_upcoming_level_0", Integer.valueOf(R.layout.row_item_upcoming_level));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(28);
        f26750a = sparseIntArray;
        sparseIntArray.put(R.layout.activity_clue_event_tutorial, 1);
        sparseIntArray.put(R.layout.activity_edit_frame, 2);
        sparseIntArray.put(R.layout.activity_home, 3);
        sparseIntArray.put(R.layout.activity_how_to_play, 4);
        sparseIntArray.put(R.layout.activity_level_loading, 5);
        sparseIntArray.put(R.layout.activity_level_selection, 6);
        sparseIntArray.put(R.layout.activity_question_selection, 7);
        sparseIntArray.put(R.layout.activity_regular_question, 8);
        sparseIntArray.put(R.layout.activity_selfie_frame_chooser, 9);
        sparseIntArray.put(R.layout.activity_send_question, 10);
        sparseIntArray.put(R.layout.activity_slider, 11);
        sparseIntArray.put(R.layout.activity_sticker_campaign, 12);
        sparseIntArray.put(R.layout.activity_sticker_campaign_list, 13);
        sparseIntArray.put(R.layout.dialog_firebase_login, 14);
        sparseIntArray.put(R.layout.fragment_header, 15);
        sparseIntArray.put(R.layout.header_normal, 16);
        sparseIntArray.put(R.layout.header_selfie_frame_chooser, 17);
        sparseIntArray.put(R.layout.layout_dialog_increase_life, 18);
        sparseIntArray.put(R.layout.layout_dialog_new_share, 19);
        sparseIntArray.put(R.layout.layout_dialog_share, 20);
        sparseIntArray.put(R.layout.layout_dialog_tg_free_answer, 21);
        sparseIntArray.put(R.layout.layout_dialog_tg_in_app_review, 22);
        sparseIntArray.put(R.layout.row_item_campaign_detail, 23);
        sparseIntArray.put(R.layout.row_item_frame, 24);
        sparseIntArray.put(R.layout.row_item_level, 25);
        sparseIntArray.put(R.layout.row_item_level_ad_unified, 26);
        sparseIntArray.put(R.layout.row_item_question, 27);
        sparseIntArray.put(R.layout.row_item_upcoming_level, 28);
    }

    @Override // androidx.databinding.e
    public List<e> a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.e
    public ViewDataBinding b(f fVar, View view, int i10) {
        int i11 = f26750a.get(i10);
        if (i11 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        switch (i11) {
            case 1:
                if ("layout/activity_clue_event_tutorial_0".equals(tag)) {
                    return new b(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_clue_event_tutorial is invalid. Received: " + tag);
            case 2:
                if ("layout/activity_edit_frame_0".equals(tag)) {
                    return new d(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_edit_frame is invalid. Received: " + tag);
            case 3:
                if ("layout/activity_home_0".equals(tag)) {
                    return new o8.f(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_home is invalid. Received: " + tag);
            case 4:
                if ("layout/activity_how_to_play_0".equals(tag)) {
                    return new h(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_how_to_play is invalid. Received: " + tag);
            case 5:
                if ("layout/activity_level_loading_0".equals(tag)) {
                    return new j(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_level_loading is invalid. Received: " + tag);
            case 6:
                if ("layout/activity_level_selection_0".equals(tag)) {
                    return new l(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_level_selection is invalid. Received: " + tag);
            case 7:
                if ("layout/activity_question_selection_0".equals(tag)) {
                    return new n(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_question_selection is invalid. Received: " + tag);
            case 8:
                if ("layout/activity_regular_question_0".equals(tag)) {
                    return new p(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_regular_question is invalid. Received: " + tag);
            case 9:
                if ("layout/activity_selfie_frame_chooser_0".equals(tag)) {
                    return new r(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_selfie_frame_chooser is invalid. Received: " + tag);
            case 10:
                if ("layout/activity_send_question_0".equals(tag)) {
                    return new t(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_send_question is invalid. Received: " + tag);
            case 11:
                if ("layout/activity_slider_0".equals(tag)) {
                    return new v(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_slider is invalid. Received: " + tag);
            case 12:
                if ("layout/activity_sticker_campaign_0".equals(tag)) {
                    return new x(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_sticker_campaign is invalid. Received: " + tag);
            case 13:
                if ("layout/activity_sticker_campaign_list_0".equals(tag)) {
                    return new z(fVar, view);
                }
                throw new IllegalArgumentException("The tag for activity_sticker_campaign_list is invalid. Received: " + tag);
            case 14:
                if ("layout/dialog_firebase_login_0".equals(tag)) {
                    return new b0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for dialog_firebase_login is invalid. Received: " + tag);
            case 15:
                if ("layout/fragment_header_0".equals(tag)) {
                    return new d0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for fragment_header is invalid. Received: " + tag);
            case 16:
                if ("layout/header_normal_0".equals(tag)) {
                    return new f0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for header_normal is invalid. Received: " + tag);
            case 17:
                if ("layout/header_selfie_frame_chooser_0".equals(tag)) {
                    return new h0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for header_selfie_frame_chooser is invalid. Received: " + tag);
            case 18:
                if ("layout/layout_dialog_increase_life_0".equals(tag)) {
                    return new j0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for layout_dialog_increase_life is invalid. Received: " + tag);
            case 19:
                if ("layout/layout_dialog_new_share_0".equals(tag)) {
                    return new l0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for layout_dialog_new_share is invalid. Received: " + tag);
            case 20:
                if ("layout/layout_dialog_share_0".equals(tag)) {
                    return new n0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for layout_dialog_share is invalid. Received: " + tag);
            case 21:
                if ("layout/layout_dialog_tg_free_answer_0".equals(tag)) {
                    return new p0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for layout_dialog_tg_free_answer is invalid. Received: " + tag);
            case 22:
                if ("layout/layout_dialog_tg_in_app_review_0".equals(tag)) {
                    return new r0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for layout_dialog_tg_in_app_review is invalid. Received: " + tag);
            case 23:
                if ("layout/row_item_campaign_detail_0".equals(tag)) {
                    return new t0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_campaign_detail is invalid. Received: " + tag);
            case 24:
                if ("layout/row_item_frame_0".equals(tag)) {
                    return new v0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_frame is invalid. Received: " + tag);
            case 25:
                if ("layout/row_item_level_0".equals(tag)) {
                    return new z0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_level is invalid. Received: " + tag);
            case 26:
                if ("layout/row_item_level_ad_unified_0".equals(tag)) {
                    return new x0(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_level_ad_unified is invalid. Received: " + tag);
            case 27:
                if ("layout/row_item_question_0".equals(tag)) {
                    return new b1(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_question is invalid. Received: " + tag);
            case 28:
                if ("layout/row_item_upcoming_level_0".equals(tag)) {
                    return new d1(fVar, view);
                }
                throw new IllegalArgumentException("The tag for row_item_upcoming_level is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.e
    public ViewDataBinding c(f fVar, View[] viewArr, int i10) {
        if (viewArr == null || viewArr.length == 0 || f26750a.get(i10) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.e
    public int d(String str) {
        Integer num;
        if (str == null || (num = a.f26751a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
